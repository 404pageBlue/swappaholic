class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.references :trader, index: true
      t.references :tradee, index: true
      t.references :trader_item, index: true
      t.references :tradee_item, index: true
      t.boolean :success

      t.timestamps
    end
  end
end
