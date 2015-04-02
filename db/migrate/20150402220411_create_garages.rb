class CreateGarages < ActiveRecord::Migration
  def change
    create_table :garages do |t|
      t.string :title
      t.text :description
      t.string :address
      t.date :date
      t.time :time

      t.timestamps null: false
    end
  end
end
