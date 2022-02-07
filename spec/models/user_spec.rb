require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    before '' do
      @user = User.new(
        first_name: 'Emily',
        last_name: 'Waters',
        email: 'Emily@example.com',
        password: '12345',
        password_confirmation: '12345'
      )
    end

    it 'saves a user successfully' do
      @user.save!
      expect(@user.errors.full_messages).to be_empty
    end

    it 'does not save a user with empty first name' do
      @user.first_name = nil
      @user.save
      expect(@user.errors.full_messages).to include("First name can't be blank")
    end
    it 'does not save a user with empty last name' do
      @user.last_name = nil
      @user.save
      expect(@user.errors.full_messages).to include("Last name can't be blank")
    end
    it 'does not save a user with empty email' do
      @user.email = nil
      @user.save
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end
    it 'does not save non unique emails' do
      @newuser = User.new(
        first_name: 'Emily',
        last_name: 'Waters',
        email: 'Emily@example.com',
        password: '12345',
        password_confirmation: '12345'
      )
      @user.save
      @newuser.save
      expect(@newuser.errors.full_messages).to include('Email has already been taken')
    end
  end
end
