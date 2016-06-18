class CreateEnterprises < ActiveRecord::Migration[5.0]
  def change
    create_table :enterprises do |t|
      t.string :name
      t.string :address
      t.string :owner_name
      t.string :owner_phone
      t.timestamps
    end
  end
end
