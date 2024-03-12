class AddOverallToPen < ActiveRecord::Migration[6.1]
  def change
    add_column :pens, :overall, :integer
  end
end
