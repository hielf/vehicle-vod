require 'rails_helper'

describe User, type: :model do

  context 'test fields' do
    before do
      @user = create(:user)
    end

    subject { @user }
    it { should respond_to(:mobile) }
    it { should respond_to(:password) }
    it { should respond_to(:nickname) }
    it { should be_valid }

    describe 'when nickname is not present' do
      before { @user.nickname = ' ' }
      it { should_not be_valid }
    end

    describe 'when nickname length > 10' do
      before do
        @user.nickname = 'a'*11
      end
      it { should_not be_valid }
    end

    describe 'when password is invalid' do
      it 'should be invalid' do
        passwords = %w[包含汉字包含汉子 12345 012345678901234567890123]
        passwords.each do |passwd|
          @user.password = passwd
          expect(@user).not_to be_valid
        end
      end
    end

  end

end