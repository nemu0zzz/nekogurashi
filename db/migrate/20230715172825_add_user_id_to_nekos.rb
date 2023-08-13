class AddUserIdToNekos < ActiveRecord::Migration[6.1]
  def change
    add_column :nekos, :user_id, :integer
  end
end
