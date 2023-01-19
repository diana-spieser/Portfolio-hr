class CreateEvgenia < ActiveRecord::Migration[7.0]
  def change
    create_table :evgenia do |t|
      t.string :name
      t.timestamps
    end
  end
end
