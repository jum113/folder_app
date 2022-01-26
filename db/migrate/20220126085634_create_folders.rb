class CreateFolders < ActiveRecord::Migration[6.0]
  def change
    create_table :folders do |t|
      t.string     :folder_name, null: false
      t.timestamps
    end
  end
end
