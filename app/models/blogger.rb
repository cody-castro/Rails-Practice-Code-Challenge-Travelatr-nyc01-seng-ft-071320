class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts
    validates :name, uniqueness: { message: "That name already already exists." }
    validates :bio, length: { minimum: 31 }
    validates :age, numericality: { greater_than: 0 }
end
