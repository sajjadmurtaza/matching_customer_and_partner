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
FactoryBot.define do
  factory :skill do
    name { 'wood' }
    association :service
  end
end
