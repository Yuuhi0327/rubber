class AddUserIdToPens < ActiveRecord::Migration[6.1]
  def change
    add_column :pens, :user_id, :integer
  end
end
