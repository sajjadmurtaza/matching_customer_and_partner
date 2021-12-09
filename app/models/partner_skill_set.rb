# frozen_string_literal: true

# == Schema Information
#
# Table name: partner_skill_sets
#
#  id         :integer          not null, primary key
#  level      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  partner_id :integer
#  skill_id   :integer
#
class PartnerSkillSet < ApplicationRecord
  validates :partner_id, :skill_id, presence: true

  belongs_to :partner
  belongs_to :skill
end
