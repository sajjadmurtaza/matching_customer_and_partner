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
FactoryBot.define do
  factory :partner do
    name { 'Roben' }
    phone_number { '01724544434' }
    operating_radius { 40 }
    address { 'quickborner straße 83 13439 berlin' }
    latitude { 52 }
    longitude { 13 }
    rating { 4 }

    trait :with_skills do
      after(:create) do |partner|
        partner.skills << create(:skill)
      end
    end

    trait :with_services do
      after(:create) do |partner|
        partner.services << create(:service)
      end
    end
  end
end
