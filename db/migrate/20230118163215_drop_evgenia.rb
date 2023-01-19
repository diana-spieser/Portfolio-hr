class DropEvgenia < ActiveRecord::Migration[7.0]
  drop_table :evgenia, force: :cascade
end
