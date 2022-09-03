class Group < ApplicationRecord
    belongs_to :user,
    has_many :trans

    validates :name, presence: true, length: { maximum: 250 }
    validates :icon, presence: true, length: { maximum: 250 }
end
