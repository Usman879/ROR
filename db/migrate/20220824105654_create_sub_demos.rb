class CreateSubDemos < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_demos do |t|
      t.string :title
      t.references :dummy, foreign_key: true

      t.timestamps
    end
  end
end
