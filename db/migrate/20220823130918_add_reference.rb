class AddReference < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :student
  end
end
