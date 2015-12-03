json.array!(@enrolled_courses) do |enrolled_course|
  json.extract! enrolled_course, :id, :course_id, :semester_id
  json.url enrolled_course_url(enrolled_course, format: :json)
end
