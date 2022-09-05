# frozen_string_literal: true

class AddGroupToTran < ActiveRecord::Migration[7.0]
  def change
    add_reference :trans, :group, null: false, foreign_key: true
  end
end
