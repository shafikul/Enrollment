json.array!(@semesters) do |semester|
  json.extract! semester, :id, :Name, :semester_type
  json.url semester_url(semester, format: :json)
end
