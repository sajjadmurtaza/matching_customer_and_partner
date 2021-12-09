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
class Customer < ApplicationRecord
  validates :name, :phone_number, presence: true
end
