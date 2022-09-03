class Tran < ApplicationRecord
    belongs_to : :groups,
    belongs_to :user,
end
