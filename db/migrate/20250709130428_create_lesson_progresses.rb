class CreateLessonProgresses < ActiveRecord::Migration[7.2]
  def change
    create_table :lesson_progresses do |t|
      t.references :kid, null: false, foreign_key: true
      t.references :lesson, null: false, foreign_key: true
      t.boolean :completed

      t.timestamps
    end
  end
end
