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
      rating: partner.rating,
      address: partner.address,
      phone_number: partner.phone_number,
      operating_radius: partner.operating_radius,
      distance_to_customer: partner.distance_to_customer
    }
  end
end
