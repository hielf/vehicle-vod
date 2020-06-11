require 'rails_helper'

describe Column, type: :model do
  it 'is valid' do
    expect(create(:column)).to be_valid
  end
end
