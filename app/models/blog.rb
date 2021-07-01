class Blog < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  has_many :comments, dependent: :destroy
end
