class CreateReserves < ActiveRecord::Migration[5.1]
  def change
    create_table :reserves do |t|
      t.date :date
      t.integer :number
      t.integer :user_id　
      t.integer :place_id
      #外部キーの設定
      # t.references :user_id, (index: true)←？
      # t.references :place_id

      t.timestamps
    end
    #複合ユニークキー
    #add_index :reserves, [:user_id, :date], unipue: true
  end
end
