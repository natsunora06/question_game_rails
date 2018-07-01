Rails.application.routes.draw do
  resources :answer_histories
  resources :answers
  resources :questions

  get 'questions/:id/answer' , to: 'questions#answer'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
