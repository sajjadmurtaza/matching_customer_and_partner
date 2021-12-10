# frozen_string_literal: true

# == Schema Information
#
# Table name: services
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Service, type: :model do
  let(:service) { create :service }

  it 'has a valid factory' do
    expect(service).to be_valid
  end

  it { is_expected.to be_a(Service) }
end
