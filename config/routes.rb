Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'photos/index' => 'photos#index'
      get 'photos/more' => 'photos#more'
      get 'photos/test' => 'photos#test'
    end
  end
end
