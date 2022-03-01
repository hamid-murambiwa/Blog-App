require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET index' do
    before(:example) { get user_posts_path(2) }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'index' template" do
      expect(response).to render_template(:index)
    end
  end

  describe 'GET show' do
    Post.create(
      user_id: 2,
      title: "Wired",
      text: 'What does the economy have to do with technological innovations of the future?',
      likes_counter: 0,
      comments_counter: 0
      )

    before(:example) { get user_post_path(2, 1) }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'show' template" do
      expect(response).to render_template(:show)
    end
  end
end
