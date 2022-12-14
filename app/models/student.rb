class Student < ApplicationRecord
has_many :posts 
has_and_belongs_to_many :courses
has_many :student_projects
has_many :projects, through: :student_projects

validates :name, presence: true
validates :email, presence: true, uniqueness: true
validates :name, length: {minimum:2, maximum:50}
validates :name, format: { with: /\A[a-zA-Z]+\z/, message: 'Only letters are allowed' }

validate :validate_student_age

after_create :display_student_age

def display_student_age
    if self.date_of_birth.present?
        age = Date.today.year - self.date_of_birth.year
        puts "========Age of student is #{age}=========="
    else
        puts "============date cannot be calculated without the date_of_birth============"
    end
    end
end

def validate_student_age
    if self.date_of_birth.present?
        age = Date.today.year - self.date_of_birth.year
            if age < 15
                errors.add(:age, 'Please provide valid date of birth here. Age must be greater than 15')
            end
    end
end

