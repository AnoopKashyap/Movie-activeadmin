# == Schema Information
#
# Table name: stars
#
#  id          :integer          not null, primary key
#  name        :string
#  role        :integer          default("hero")
#  age         :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Star do
  let!(:star) { FactoryGirl.build(:star) }

  it 'has a valid factory' do
    FactoryGirl.create(:star).should be_valid
  end

  it 'is invalid without name' do
    star.name = nil
    expect(star).not_to be_valid
  end

  it 'is invalid without role' do
    star.role = nil
    expect(star).not_to be_valid
  end

  it 'is invalid without age' do
    star.age = nil
    expect(star).not_to be_valid
  end

  it "should have many movie stars" do
    t = Star.reflect_on_association(:movie_stars)
    expect(t.macro).to eq(:has_many)
  end

  it "should have many movies" do
    t = Star.reflect_on_association(:movies)
    expect(t.macro).to eq(:has_many)
  end
end
