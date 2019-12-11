class CreateAdvertisements < ActiveRecord::Migration[5.2]
  def change
    create_table :advertisements do |t|

      t.integer :adver_id
      t.string :title
      t.string :file
      t.string :link
      t.datetime :created_at

      t.timestamps
    end
  end
end
