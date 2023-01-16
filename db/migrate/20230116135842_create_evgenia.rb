class CreateEvgenia < ActiveRecord::Migration[7.0]
  def change
    create_table :evgenia do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
