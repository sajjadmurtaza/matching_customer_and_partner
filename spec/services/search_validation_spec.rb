# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SearchValidation do
  subject { SearchValidation.new(params).validate }

  let(:customer) { create :customer }
  let(:partner) { create :partner, :with_skills, :with_services }

  before do
    customer
    partner
  end

  let(:params) do
    {
      material: partner.skills.pluck(:name),
      lat: 52,
      long: 13,
      customer_id: customer_id
    }
  end

  describe '#validate' do
    let(:customer_id) { customer.id }

    it 'validate the params and does not raise the error' do
      expect(subject).to eq nil
    end

    context 'when invalid params' do
      let(:customer_id) { 'unknown' }

      it 'validate the params and raise the error' do
        expect { subject }.to raise_error(RuntimeError, 'Please provide valid customer id.')
      end
    end
  end
end
