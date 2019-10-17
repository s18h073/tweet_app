class Retweet < ApplicationRecord
    validates :content, {presence: false}

    def post
        return Post.find_by(id: self.post_id)
    end
end
