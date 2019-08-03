class PostmanUser < ApplicationRecord

    before_save {email.downcase!}

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :name, presence:true, length: {maximum:50}
    validates :email, presence:true, length: {maximum:255},
                      format: {with: VALID_EMAIL_REGEX},
                      uniqueness: {case_sensitive: false}
    validates :height, presence:true, numericality: {greater_than: 0}
    validates :weight, presence: true, numericality: {greater_than: 0}

end
