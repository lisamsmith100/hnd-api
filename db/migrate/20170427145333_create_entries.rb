class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :title
      t.string :backstory
      t.string :stopper
      t.string :status
      t.timestamp :date_added
      t.boolean :deleted_flag

      t.timestamps
    end
  end
end
