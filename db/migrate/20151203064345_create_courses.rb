class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :Name
      t.string :course_no

      t.timestamps null: false
    end
  end
end
