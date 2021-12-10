# frozen_string_literal: true

# == Schema Information
#
# Table name: partner_expertises
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  partner_id :integer
#  service_id :integer
#
FactoryBot.define do
  factory :partner_expertise do
    association :service
    association :partner
  end
end
