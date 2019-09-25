class CreateReserves < ActiveRecord::Migration[5.1]
  def change
    create_table :reserves do |t|
      t.date :date
      t.integer :number
      t.integer :user_id
      t.integer :place_id

      t.timestamps
    end
  end
end
