# frozen_string_literal: true

class SearchValidation
  attr_accessor :params

  def initialize(params)
    @params = params
  end

  def validate
    validate_skills
    validate_address
    valid_customer
  end

  private

  def skills
    Skill.pluck(:name)
  end

  def material
    params[:material]
  end

  def longitude
    params[:long]
  end

  def latitude
    params[:lat]
  end

  def valid_skills?
    (skills & material).any?
  end

  def valid_address?
    latitude.present? && longitude.present?
  end

  def customer
    Customer.find_by_id(params[:customer_id])
  end

  def validate_skills
    raise "Please provide correct material. e.g ['wood', 'tiles']" unless valid_skills?
  end

  def validate_address
    raise 'Please provide correct address with latitude and longitude. e.g [48, 11]' unless valid_address?
  end

  def valid_customer
    raise 'Please provide valid customer id.' unless customer.present?
  end
end
