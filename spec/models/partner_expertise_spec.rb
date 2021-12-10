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
require 'rails_helper'

RSpec.describe PartnerExpertise, type: :model do
  let(:partner_expertise) { create :partner_expertise }

  it 'has a valid factory' do
    expect(partner_expertise).to be_valid
  end

  it { is_expected.to be_a(PartnerExpertise) }
end
