require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    before(:example) { get users_path }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders the correct template' do
      expect(response).to render_template(:index)
    end
  end

  describe 'GET /show' do
    user = User.create(
      name: 'Tom',
      photo: 'https://i1.sndcdn.com/avatars-000339084123-nag0p1-t500x500.jpg',
      bio: 'Teacher from Mexico.',
      posts_counter: 0
      )

    before(:each) { get user_path id: user.id }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders the correct template' do
      expect(response).to render_template(:show)
    end
  end
end
