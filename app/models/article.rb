class Article < ApplicationRecord
  validates :title, :email, :content, :price, presence: true

  belongs_to :category
end
