require 'spec_helper'

describe Generator do

  before(:all) do
    @postcodes_array = Generator.new.postcodes.random_array(rand(2..10))
  end

  it 'should generate array of random postcodes' do
    p @postcodes_array
    expect(@postcodes_array).to be_kind_of(Array)
  end

  it 'should generated array of random postcodes must be less than 10' do
    expect(@postcodes_array.length).to be_between(2, 10)
  end

  it 'should length of the postcode be less than 8 characters' do
    @postcodes_array.each do |postcode|
      expect(postcode.length).to be <= 8
    end
  end

  it 'should return the individual postcodes as a string' do
    @postcodes_array.each do |postcode|
      expect(postcode).to be_kind_of(String)
    end
  end

  it 'should return postcodes starting with letters' do
    @postcodes_array.each do |postcode|
      expect(postcode).to start_with /[A-Z]/
    end
  end
end