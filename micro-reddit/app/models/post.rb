class Post < ApplicationRecord

    belongs_to :user
    has_many :comments, dependent: :destroy

    validates :title, :body, presence: true, uniqueness: true
    validates :body, length: { minimum: 10 }
end
