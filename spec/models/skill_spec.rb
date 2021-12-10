# frozen_string_literal: true

# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  service_id :integer
#
require 'rails_helper'

RSpec.describe Skill, type: :model do
  let(:skill) { create :skill }

  it 'has a valid factory' do
    expect(skill).to be_valid
  end

  it { is_expected.to be_a(Skill) }
end
