class Article < ApplicationRecord
    #ensures all articles have a title that is atleast 5 characters long
    validates :title, presence: true,
    length: { minimum: 5 }
end
