json.array!(@courses) do |course|
  json.extract! course, :id, :Name, :course_no
  json.url course_url(course, format: :json)
end
