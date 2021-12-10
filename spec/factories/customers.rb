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
    name { 'Alex' }
    phone_number { '01769366687' }
  end
end
