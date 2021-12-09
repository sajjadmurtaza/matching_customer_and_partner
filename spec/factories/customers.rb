# frozen_string_literal: true

# == Schema Information
#
# Table name: customers
#
#  id           :integer          not null, primary key
#  name         :string
#  phone_number :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
FactoryBot.define do
  factory :customer do
    name { 'MyString' }
    phone_number { 'MyString' }
  end
end
