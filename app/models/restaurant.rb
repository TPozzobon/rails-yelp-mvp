class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :adress, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], message: "It's not a valid category" }
end
