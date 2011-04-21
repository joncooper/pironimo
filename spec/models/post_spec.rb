require 'spec_helper'

describe Post do
  describe 'validations' do
    it { should validate_presence_of :page }
    it { should validate_presence_of :user }
  end
end
