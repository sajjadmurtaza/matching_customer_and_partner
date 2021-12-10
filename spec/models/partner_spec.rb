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
require 'rails_helper'

RSpec.describe Partner, type: :model do
  let(:partner) { create :partner }

  it 'has a valid factory' do
    expect(partner).to be_valid
  end

  it { is_expected.to be_a(Partner) }
end
