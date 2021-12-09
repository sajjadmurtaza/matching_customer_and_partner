# frozen_string_literal: true

# == Schema Information
#
# Table name: partner_skill_sets
#
#  id         :integer          not null, primary key
#  level      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  partner_id :integer
#  skill_id   :integer
#
require 'rails_helper'

RSpec.describe PartnerSkillSet, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
