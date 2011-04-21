require 'spec_helper'

describe Page do
  describe 'validations' do
    it 'should require a slug' do
      page = Page.new
      page.should have(1).error_on(:slug)
    end
    it 'should require a title' do
      page = Page.new
      page.should have(1).error_on(:title)
    end
  end
end