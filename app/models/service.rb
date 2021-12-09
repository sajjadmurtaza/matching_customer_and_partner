# frozen_string_literal: true

# == Schema Information
#
# Table name: services
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Service < ApplicationRecord
  validates :name, presence: true

  has_many :skills, dependent: :destroy
  has_many :partner_expertises
  has_many :partners, through: :partner_expertises
end
