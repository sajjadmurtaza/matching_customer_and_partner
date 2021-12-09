# frozen_string_literal: true

# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  service_id :integer
#
class Skill < ApplicationRecord
  validates :name, :service_id, presence: true

  belongs_to :service
  has_many :partner_skill_sets
  has_many :partners, through: :partner_skill_sets
end
