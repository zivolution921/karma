class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :expertise, :string
    add_column :users, :service_needed, :string
  end
end
