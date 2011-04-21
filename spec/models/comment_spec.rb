require 'spec_helper'

describe Comment do
  describe 'validations' do
    before do
      @page = Factory(:page)
    end
    it 'should require a parent Post' do
      comment = Comment.new
      comment.should have(1).error_on(:post)
    end
    
    it 'should require a parent User' do
      comment = Comment.new
      comment.should have(1).error_on(:user)
    end
  end
end
