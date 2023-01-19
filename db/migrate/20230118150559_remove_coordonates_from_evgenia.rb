class RemoveCoordonatesFromEvgenia < ActiveRecord::Migration[7.0]
  def change
    remove_column :evgenia, :latitude, :float
    remove_column :evgenia, :longitude, :float
  end
end
