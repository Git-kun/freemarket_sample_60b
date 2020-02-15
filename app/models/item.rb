class Item < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :seller, class_name: "User"
  belongs_to :buyer, class_name: "User", foreign_key: "user_id", optional: true

  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true

  enum status: { 出品中: 0,取引中: 1,購入済み: 2}
end
