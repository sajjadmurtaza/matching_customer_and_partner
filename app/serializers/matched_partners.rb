# frozen_string_literal: true

class MatchedPartners
  attr_accessor :partner

  def initialize(partner)
    @partner = partner
  end

  def self.serialize(partners)
    partners.map { |partner| new(partner).serialize }
  end

  def serialize
    {
      name: partner.name,
      phone_number: partner.phone_number,
      address: partner.address,
      rating: partner.rating,
      operating_radius: partner.operating_radius,
      distance_to_customer: partner.distance_to_customer
    }
  end
end
