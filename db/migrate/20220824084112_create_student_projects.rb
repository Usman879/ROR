class CreateStudentProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :student_projects do |t|
      t.references :student, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
