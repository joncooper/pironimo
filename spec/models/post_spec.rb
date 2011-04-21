require 'spec_helper'

describe Post do
  describe 'validations' do
    it 'should have a parent Page' do
      post = Post.new
      post.should have(1).error_on(:page)
    end
    it 'should have a parent User' do
      post = Post.new
      post.should have(1).error_on(:user)
    end
  end
end
