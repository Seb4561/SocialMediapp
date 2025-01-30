class AddTwitterUrlToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :twitter_url, :string
  end
end
