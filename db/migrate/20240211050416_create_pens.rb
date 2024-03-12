class CreatePens < ActiveRecord::Migration[6.1]
  def change
    create_table :pens do |t|
      t.string :rubbers_name
      t.text :strong_point
      t.text :weak_point

      t.timestamps
    end
  end
end
