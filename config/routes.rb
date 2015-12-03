Rails.application.routes.draw do
  resources :stores do
    collection do
      post :addCourse
      delete :deleteCourse
    end
  end
  resources :enrolled_courses
  resources :semesters do
    member do
      get 'getCourse'
    end
  end
  resources :courses

  root to: 'admin#index'
end
