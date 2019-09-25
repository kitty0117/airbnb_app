class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.text :title
      t.string :hostname
      t.text :wrapup
      t.text :facility
      t.text :area

      t.timestamps
    end
  end
end
