# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::PartnersController, type: :controller do
  describe '#index' do
    subject(:index) { get :index, params: params }

    let(:customer) { create :customer }
    let(:partner) { create :partner, :with_skills, :with_services }

    before do
      customer
      partner
    end

    let(:params) do
      {
        partner: {
          material: partner.skills.pluck(:name),
          lat: 52,
          long: 13,
          customer_id: customer_id
        }
      }
    end

    context 'when valid params' do
      let(:customer_id) { customer.id }

      it 'returns 200' do
        expect(index).to have_http_status(:ok)
      end
    end

    context 'when invalid params' do
      let(:customer_id) { 'invalid_customer_id' }

      it 'returns error' do
        expect { index }.to raise_error(RuntimeError, 'Please provide valid customer id.')
      end
    end
  end
end
