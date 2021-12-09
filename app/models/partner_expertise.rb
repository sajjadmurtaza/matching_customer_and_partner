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
class PartnerExpertise < ApplicationRecord
  validates :partner_id, :service_id, presence: true

  belongs_to :partner
  belongs_to :service
end
