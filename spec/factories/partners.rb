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
    name { 'MyString' }
    phone_number { 'MyString' }
    operating_radius { 1 }
    address { 'MyString' }
    latitude { 1 }
    longitude { 1 }
    rating { 1 }
  end
end
