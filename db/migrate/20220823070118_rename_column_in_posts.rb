class RenameColumnInPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :contact_number, :contact_num
  end
end
