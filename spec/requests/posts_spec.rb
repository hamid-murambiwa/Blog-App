require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET index' do

    User.create(
      name: 'Tom',
      photo: 'https://png.pngtree.com/png-vector/20210426/ourlarge/pngtree-young-man-cartoon-profile-vector-hd-image-png-image_3238138.jpg',
      bio: "Dr. Jonas Frederikson is an orthopedic surgeon who believes that patient care should be a physician's first priority. He special
            izes in laparoscopic procedures that minimize pain and recovery time, and has expertise in minimally invasive total knee replacement
            surgeries. Awarded the Distinguished Service Award from the American Medical Association in 2017, Dr. Frederikson has been published
            in both the Journal of the American Podiatric Medical Association and the New England Journal of Medicine. He holds a medical degree
            from the Medical University of South Carolina, where he completed a postdoctoral fellowship in the field of orthopedic medicine.",
      posts_counter: 0
    )

    before(:example) { get user_posts_path(1) }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'index' template" do
      expect(response).to render_template(:index)
    end
  end

  describe 'GET show' do
    Post.create(
      user_id: 1,
      title: 'Wired',
      text: 'What does the economy have to do with technological innovations of the future?',
      likes_counter: 0,
      comments_counter: 0
    )

    before(:example) { get user_post_path(1, 1) }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'show' template" do
      expect(response).to render_template(:show)
    end
  end
end
