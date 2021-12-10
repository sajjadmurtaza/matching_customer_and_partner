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
  let(:partner) { create :partner, :with_skills, :with_services }

  before { partner }

  it 'has a valid factory' do
    expect(partner).to be_valid
  end

  it { is_expected.to be_a(Partner) }

  describe '#working_area?' do
    context 'when address is within working area' do
      subject { partner.working_area?(address) }

      let(:address) { [partner.latitude, partner.longitude] }

      it 'returns true if partner within the working area' do
        expect(subject).to be_truthy
      end
    end

    context 'when address is not within working area' do
      subject { partner.working_area?(address) }

      let(:address) { [partner.latitude + 10, partner.longitude + 10] }

      it 'returns true if partner within the working area' do
        expect(subject).to be_falsy
      end
    end
  end

  describe '#by_skill' do
    subject { Partner.by_skill(partner.skills.pluck(:name)) }

    it 'return partners with passing skills sets' do
      expect(subject.pluck(:id)).to  eq [partner.id]
    end
  end

  describe '#by_service' do
    subject { Partner.by_service(partner.services.first.name) }

    it 'return partners with passing services' do
      expect(subject.pluck(:id)).to  eq [partner.id]
    end
  end

  describe '#search' do
    subject do
      Partner.search(
        service: partner.services.first.name,
        skills: partner.skills.pluck(:name),
        address: address
      )
    end

    context 'when pass near by address to customer' do
      let(:address) { [partner.latitude, partner.longitude] }

      it 'return partners with given parameters' do
        expect(subject.pluck(:id)).to include(partner.id)
      end
    end

    context 'when pass too far address to customer' do
      let(:address) { [partner.latitude + 10, partner.longitude + 10] }

      it 'returns no partner - becasue of out of working area' do
        expect(subject).to be_empty
      end
    end
  end
end
