# frozen_string_literal: true

# == Schema Information
#
# Table name: partners
#
#  id               :integer          not null, primary key
#  address          :string
#  latitude         :integer
#  longitude        :integer
#  name             :string
#  operating_radius :integer
#  phone_number     :string
#  rating           :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Partner < ApplicationRecord
  geocoded_by :address

  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode

  validates :address, :name, :phone_number, :operating_radius, presence: true

  has_many :partner_expertises, dependent: :destroy
  has_many :services, through: :partner_expertises

  has_many :partner_skill_sets, dependent: :destroy
  has_many :skills, through: :partner_skill_sets

  scope :by_skill, ->(skills) { includes(:skills).where(skills: { name: [skills] }) }
  scope :by_service, ->(service) { includes(:services).where(services: { name: service }) }

  attr_accessor :distance_to_customer

  serialize :distance_to_customer

  def self.search(service:, skills:, address:)
    all_matched_partner = by_skill(skills).by_service(service).order(rating: :desc)

    all_matched_partner.select do |partner|
      partner.working_area?(address)
    end
  end

  def working_area?(address)
    @distance_to_customer = distance_from(address).round(2)

    @distance_to_customer <= operating_radius
  end
end
