class ChangeCustomerIdToUserId < ActiveRecord::Migration[6.0]
  def change
    remove_column :favorites, :customer_id
    add_column :favorites, :user_id, :integer
  end
end
