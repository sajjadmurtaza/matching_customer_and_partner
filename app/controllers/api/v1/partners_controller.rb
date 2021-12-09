# frozen_string_literal: true

module Api
  module V1
    class PartnersController < ApplicationController
      def index
        result = ::MatchPartners.new(search_params).run

        render json: result.to_json, status: :ok
      end

      private

      def search_params
        params.require(:partner).permit(:lat, :long, :area_in_sqm, :customer_id, material: [])
      end
    end
  end
end
