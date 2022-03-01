require 'rails_helper'

RSpec.describe Post, type: :model do
  before(:each) do
    @user = User.new(name: 'Hamid', bio: 'I am a web software engineer', photo: '', posts_counter: 0)
    @post = Post.new(title: 'Working with RoR', text: 'Practice building rails apps', comments_counter: 0,
                     likes_counter: 0, user_id: @user.id)

    9.times { |i| Comment.new(text: "Comment #{i}", user_id: @user.id, post_id: @post.id) }

    @comments = Comment.where(post_id: @post.id).where(user_id: @user.id).all
  end

  describe 'user validation tests' do
    it 'validate that the title is not empty' do
      @post.title = ''
      expect(@post).to_not be_valid
    end

    it 'validate the presence of the comments_counter' do
      @post.comments_counter = nil
      expect(@post).to_not be_valid
    end

    it 'validate the numericality of the comments_counter' do
      @post.comments_counter = 'two'
      expect(@post).to_not be_valid
    end

    it 'validate the presence of the likes_counter' do
      @post.likes_counter = nil
      expect(@post).to_not be_valid
    end

    it 'validate the numericality of the likes_counter' do
      @post.likes_counter = 'seven'
      expect(@post).to_not be_valid
    end

    it 'validate the presence of the user_id' do
      @post.user_id = nil
      expect(@post).to_not be_valid
    end
  end

  describe 'post model methods tests' do
    it 'returns the last 5 comments' do
      expect(@post.recent_comments).to eq(@comments.order('created_at DESC').limit(5))
    end
  end
end
