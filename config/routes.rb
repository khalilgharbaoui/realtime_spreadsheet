Rails.application.routes.draw do
  get 'spreadsheet/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
  root 'spreadsheet#index'
end
