class CreateQrcodes < ActiveRecord::Migration[5.0]
  def change
    create_table :qrcodes do |t|
      t.string :code, null: false
      t.integer :creator_id, null: false
      t.integer :enterprise_id
      t.integer :goods_id
      t.timestamps
    end
  end
end
