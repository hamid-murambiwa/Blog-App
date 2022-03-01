class Post < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :comments
  has_many :likes

  def recent_comments
    Comment.last(5)
  end

  after_save :update_posts_counter

  def update_posts_counter
    user.increment!(:posts_counter)
  end

  validates :title, presence: true,
                    length: { maximum: 250 }
  validates :comments_counter, :likes_counter, numericality: { greater_than_or_equal_to: 0 }
end
