require 'rails_helper'

describe Category, type: :model do
  it 'is valid' do
    expect(create(:category)).to be_valid
  end
end
