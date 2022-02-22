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
end
