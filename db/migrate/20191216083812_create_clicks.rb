class CreateClicks < ActiveRecord::Migration[5.2]
  def change
    create_table :clicks do |t|
      t.integer :advertisement_id
      t.datetime :created_at

      t.timestamps
    end
  end
end
