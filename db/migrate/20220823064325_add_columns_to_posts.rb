class AddColumnsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :address, :string
    add_column :posts, :contact_number, :string
    add_column :posts, :age, :integer
  end
end
