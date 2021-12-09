# frozen_string_literal: true

class MatchPartners
  attr_accessor :params

  def initialize(params)
    @params = params
  end

  def run
    SearchValidation.new(params).validate

    result = Partner.search(
      service: 'flooring',
      skills: params[:material],
      address: [params[:lat], params[:long]]
    )

    ::MatchedPartners.serialize(result)
  end
end
