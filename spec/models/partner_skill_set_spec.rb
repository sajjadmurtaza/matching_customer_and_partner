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
  let(:partner_skill_set) { create :partner_skill_set }

  it 'has a valid factory' do
    expect(partner_skill_set).to be_valid
  end

  it { is_expected.to be_a(PartnerSkillSet) }
end
