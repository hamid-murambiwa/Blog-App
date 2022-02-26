require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET index' do
    before(:example) { get '/users/1/post' }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'index' template" do
      expect(response).to render_template(:index)
    end
  end

  describe 'GET show' do
    before(:example) { get '/users/2/post/1' }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'show' template" do
      expect(response).to render_template(:show)
    end
  end
end
