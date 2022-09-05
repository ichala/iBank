# frozen_string_literal: true

class CreateTrans < ActiveRecord::Migration[7.0]
  def change
    create_table :trans do |t|
      t.text :name
      t.float :amount

      t.timestamps
    end
  end
end
