class ChangeCustomersToUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :customers
    create_table :customers do |t|
      t.string :username
     
    end
  end
end
