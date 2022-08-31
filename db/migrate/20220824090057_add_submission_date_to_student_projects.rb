class AddSubmissionDateToStudentProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :student_projects, :submission_date, :date
  end
end
