json.array!(@stores) do |store|
  json.extract! store, :id, :user_id, :course_id, :semester_id, :cgpa
  json.url store_url(store, format: :json)
end
