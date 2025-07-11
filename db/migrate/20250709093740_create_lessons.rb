class CreateLessons < ActiveRecord::Migration[7.2]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :content
      t.string :level
      t.integer :position
      t.boolean :published

      t.timestamps
    end
  end
end
