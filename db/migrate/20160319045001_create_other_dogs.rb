class CreateOtherDogs < ActiveRecord::Migration
  def change
    create_table :other_dogs do |t|
      t.string :site_name
      t.string :dog_id
      t.string :breeder_id
      t.string :dog_type
      t.string :birthday
      t.string :price
      t.string :status
      t.timestamps
    end
  end
end