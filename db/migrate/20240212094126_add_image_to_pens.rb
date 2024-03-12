class AddImageToPens < ActiveRecord::Migration[6.1]
  def change
    add_column :pens, :image, :string
  end
end
