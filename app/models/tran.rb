class Tran < ApplicationRecord
  belongs_to :group
  belongs_to :user

  validates :amount, presence: true, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }
  validates :name, presence: true, length: { maximum: 250 }
end
