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
  pending "add some examples to (or delete) #{__FILE__}"
end
