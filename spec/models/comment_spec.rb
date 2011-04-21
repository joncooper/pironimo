require 'spec_helper'

describe Comment do
  describe 'validations' do
    it { should validate_presence_of :post }
    it { should validate_presence_of :user }
  end
end
