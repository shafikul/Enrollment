class Semester < ActiveRecord::Base
  has_many :enrolled_courses
  has_many :courses, through: :enrolled_courses
end
