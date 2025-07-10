class AddParentToKids < ActiveRecord::Migration[7.2]
  def change
    add_reference :kids, :parent, null: false, foreign_key: true
  end
end
