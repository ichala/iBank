class AddUserToTran < ActiveRecord::Migration[7.0]
  def change
    add_reference :trans, :user, null: false, foreign_key: true
  end
end