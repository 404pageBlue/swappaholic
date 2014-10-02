class CreateRtests < ActiveRecord::Migration
  def change
    create_table :rtests do |t|

      t.timestamps
    end
  end
end
