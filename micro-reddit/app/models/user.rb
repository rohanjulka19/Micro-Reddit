class User < ApplicationRecord

    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy

    validates :username, uniqueness: true
    validates :name, :username, :email, presence: true
end
