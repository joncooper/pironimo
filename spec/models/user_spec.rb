require 'spec_helper'

describe User do
  describe 'validations' do
    it 'should require initials' do
      user = User.new
      user.should have(1).error_on(:initials)
    end
    it 'should require a name' do
      user = User.new
      user.should have(1).error_on(:name)
    end
    it 'should require unique initials' do
      user1 = Factory.create(:user, :name => 'User1', :email => 'user1@test.com', :password => 'fakepw')
      user2 = Factory.build(:user)
      user2.initials = user1.initials
      user2.should have(1).error_on(:initials)
    end
    it 'should require unique email address' do
    end
  end
end