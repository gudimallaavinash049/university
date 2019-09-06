Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'index',to:'courses#index'
  get 'courses/new', to: 'courses#new'
  get 'about', to: 'pages#about'
  get 'contact_us', to: 'pages#contact_us'
  root 'logins#new'
  post 'login', to: 'logins#create'
  delete 'logout', to: 'logins#destroy'
  resources :students
  post 'course_enroll', to: 'student_course#create'
  get 'about',to:'pages#about'
end
