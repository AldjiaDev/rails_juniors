class AddModuleNumberToLessons < ActiveRecord::Migration[7.2]
  def change
    add_column :lessons, :module_number, :integer
  end
end
