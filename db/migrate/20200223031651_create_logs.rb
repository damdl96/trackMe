class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    create_table :logs do |t|
      t.string :activityname
      t.time :timestart
      t.time :timeend
      t.text :notes

      t.timestamps
    end
  end
end
