class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validate :title_is_clickbait
    validates :category ,inclusion: {in: ['Fiction','Non-Fiction']}


    # CUSTOM VALIDATIONS 
    def title_is_clickbait
        if title == "True Facts"
            errors.add(:title,  "This is clickbait")
        end
    end
end
 