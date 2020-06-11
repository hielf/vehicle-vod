require 'rails_helper'

describe Video, type: :model do
  it 'is valid' do
    column = create(:column)
    expect(create(:video, column_ids: [column.id])).to be_valid
  end
end