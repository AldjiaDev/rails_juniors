class AddDeviseToKids < ActiveRecord::Migration[7.2]
  def change
    change_table :kids, bulk: true do |t|
      t.string   :reset_password_token unless column_exists?(:kids, :reset_password_token)
      t.datetime :reset_password_sent_at unless column_exists?(:kids, :reset_password_sent_at)
      t.datetime :remember_created_at unless column_exists?(:kids, :remember_created_at)
      t.timestamps null: true unless column_exists?(:kids, :created_at) && column_exists?(:kids, :updated_at)
    end

    add_index :kids, :reset_password_token, unique: true unless index_exists?(:kids, :reset_password_token)
  end
end
