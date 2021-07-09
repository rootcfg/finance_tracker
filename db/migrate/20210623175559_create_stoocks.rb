class CreateStoocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stoocks do |t|
      t.string :ticker
      t.string :name
      t.decimal :last_price

      t.timestamps
    end
  end
end
