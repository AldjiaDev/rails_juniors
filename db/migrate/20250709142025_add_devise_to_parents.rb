class AddDeviseToParents < ActiveRecord::Migration[7.2]
  def change
    change_table :parents, bulk: true do |t|
      # Ne pas redéclarer :email ou :encrypted_password si déjà présents

      t.string   :reset_password_token unless column_exists?(:parents, :reset_password_token)
      t.datetime :reset_password_sent_at unless column_exists?(:parents, :reset_password_sent_at)
      t.datetime :remember_created_at unless column_exists?(:parents, :remember_created_at)
      t.timestamps null: true unless column_exists?(:parents, :created_at) && column_exists?(:parents, :updated_at)
    end

    add_index :parents, :reset_password_token, unique: true unless index_exists?(:parents, :reset_password_token)
  end
end
