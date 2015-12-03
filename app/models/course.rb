class Course < ActiveRecord::Base
  has_many :enrolled_courses
  has_many :semesters, through: :enrolled_courses
end
