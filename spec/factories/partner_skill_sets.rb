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
FactoryBot.define do
  factory :partner_skill_set do
    level { 3 }
    association :skill
    association :partner
  end
end
