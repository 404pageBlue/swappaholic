class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :condition
      t.float :est_value
      t.string :willing_to_trade_for

      t.timestamps
    end
  end
end
