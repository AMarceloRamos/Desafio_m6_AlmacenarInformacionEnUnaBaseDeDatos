class CreateSeries < ActiveRecord::Migration[7.0]
  def change
    create_table :series do |t|
      t.string :name, null: false
      t.text :synopsis, null: false
      t.string :director, null: false

      t.timestamps
    end
  end
end
