require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:each) do
    @user = User.new(id: 3, name: 'Peter', bio: 'I like watching sports', photo: '', posts_counter: 0)
    @post = Post.new(
      title: 'Post traumatic stress',
      text: 'Must looked into before it becomes fatal',
      comments_counter: 2,
      likes_counter: 25,
      user_id: @user.id
    )
    @comment = Comment.new(text: 'Preach brother!', user_id: @user.id, post_id: @user.id)
  end

  describe 'validation tests' do
    it 'validates the user_id is present' do
      expect(@comment.user_id).to eq(3)
    end

    it 'validates the post_id is present' do
      expect(@comment.post_id).to eq(3)
    end

    it 'validates the comment exists' do
      expect(@comment.text).to eq('Preach brother!')
    end
  end

  describe 'comemnt model methods tests' do
    it 'it should increment the post comments_counter' do
      @comment.save
      expect(@post.comments_counter).to eq(2)
    end
  end
end
