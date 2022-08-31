class ChangeTypeOfDescriptionInDummy < ActiveRecord::Migration[5.2]
  def change
    reversible do |dir|
      dir.up do 
        change_column :dummies, :description, :text
      end
      dir.down do
        change_column :dummies, :description, :string
      end
    end
  end
end
