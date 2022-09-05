class Group < ApplicationRecord
  belongs_to :user
  has_many :trans, dependent: :delete_all

  validates :name, presence: true, length: { maximum: 250 }
  validates :icon, presence: true, length: { maximum: 250 }
end
