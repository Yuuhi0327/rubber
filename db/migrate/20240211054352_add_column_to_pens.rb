class AddColumnToPens < ActiveRecord::Migration[6.1]
  def change
    add_column :pens, :company_name, :string
  end
end
