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
require 'rails_helper'

RSpec.describe Customer, type: :model do
  let(:customer) { create :customer }

  it 'has a valid factory' do
    expect(customer).to be_valid
  end

  it { is_expected.to be_a(Customer) }
end
