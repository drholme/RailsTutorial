class Article < ApplicationRecord
    #ensures all articles have a title that is atleast 5 characters long
    has_many :comments, dependent: :destroy
    validates :title, presence: true,
                      length: { minimum: 5 }
end
