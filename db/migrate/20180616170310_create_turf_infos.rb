class CreateTurfInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :turf_infos do |t|
      t.string :name
      t.string :address
      t.string :landmark
      t.string :phone
      t.integer :charges
      t.boolean :available
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
