class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cover, :string
    add_column :users, :description, :text
    add_column :users, :fb_url, :string
    add_column :users, :ig_url, :string
    add_column :users, :hp_url, :string
    add_column :users, :user_type, :integer
  end
end
