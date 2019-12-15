require 'rails_helper'

RSpec.describe User, type: :model do
 context 'validation tests' do 
    it 'has a first name' do
      user = User.new(lastname: 'Doe', email: 'test@example.com', password_digest: 'password').save
      expect(user).to eq(false)
    end

    it 'has a last name' do
      user = User.new(firstname: 'Doris', email: 'test@example.com', password_digest: 'password').save
      expect(user).to eq(false)
    end

    it 'has an email' do
      user = User.new(firstname: 'Doris', lastname: 'Doe', password_digest: 'password').save
      expect(user).to eq(false)
    end    

    it 'has a password' do
      user = User.new(firstname: 'Doris', lastname: 'Doe', email: 'test@example.com').save
      expect(user).to eq(false)
    end

    it 'should save successfully' do
      user = User.new(firstname: 'Doris', lastname: 'Doe', email: 'test@example.com', password_digest: 'password').save
      expect(user).to eq(true)
    end
  end
end
