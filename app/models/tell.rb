class Tell < ApplicationRecord
  belongs_to :user, optional: true
  validates :telephone ,presence: true, length: { maximum: 11}
end
