class Item < ApplicationRecord
# association
  belongs_to :user, optional: true
  belongs_to :seller, class_name: "User",foreign_key:"seller_id"
  belongs_to :buyer, class_name: "User", foreign_key: "buyer_id", optional: true
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true

# enum設定
  enum status: { 出品中: 0,取引中: 1,購入済み: 2}

# validation
  validates :price, presence: true
  validates :name, presence: true, length: { maximum: 13}
  validates :content, length: { maximum: 400}
  validates :images, presence:true, on: :create
end
