class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.string :date
      t.string :dog_name
      t.string :appeal
      t.text :comment
      t.string :url
      t.string :breeder_name
      t.string :img_url

      t.timestamps
    end
  end
end
