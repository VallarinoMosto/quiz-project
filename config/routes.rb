Rails.application.routes.draw do
  resources :questions
  resources :tests
  resources :subjects
  

  get '/questions', to: 'questions#index'
  get '/questions/:id', to: 'questions#show'
  post '/question', to: 'questions#create'
  patch '/questions/:id', to: 'questions#update'
  delete '/question/:id', to: 'questions#delete'

  get '/subjects', to: 'subjects#index'
  get '/subjects/:id', to: 'subjects#show'

end
