class Tran < ApplicationRecord
    belongs_to : :groups,
    belongs_to :user,

    validates :amount, presence: true
    validates :name, presence: true, length: { maximum: 250 }
end
