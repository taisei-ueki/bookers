Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/show'
  get 'lists/edit'
  get 'lists/new'
  post 'lists'=> 'lists#create'
  get '/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
