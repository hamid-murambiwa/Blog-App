require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET index' do
    before(:example) { get 'htttp://localhost:3000/posts/index' }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'index' template" do
      expect(response).to render_template('index')
    end

    it "renders 'index' template with template in body" do
      expect(response.body).to match('Posts')
    end
  end

  describe 'GET show' do
    before(:example) { get 'htttp://localhost:3000/posts/show' }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'show' template" do
      expect(response).to render_template('show')
    end

    it "renders 'show' template with template in body" do
      expect(response.body).to match('Show')
    end
  end
end
