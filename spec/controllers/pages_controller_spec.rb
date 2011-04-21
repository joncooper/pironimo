require 'spec_helper'

describe PagesController do
  before do
    @page = Factory.create(:page)
  end
  describe "#show" do
    it 'should redirect from the index to the front page' do
      get :index
      response.should redirect_to(page_path('front'))
    end
    it 'should render a page' do
      get :show, :id => @page.slug
      response.should render_template('show')
    end
  end
end
