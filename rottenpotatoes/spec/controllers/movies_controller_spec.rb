require 'rails_helper'
require 'spec_helper'
describe MoviesController do
  describe 'GET index' do
    it 'should assign instance variable for title header' do
      get :index, { sort: 'title'}
      expect(assigns(:title_header)).to eql('hilite')
    end
    it 'should assign instance variable for release_date header' do
      get :index, { sort: 'release_date'}
      expect(assigns(:date_header)).to eql('hilite')
    end
 end
end