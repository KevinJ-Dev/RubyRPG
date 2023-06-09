Rails.application.routes.draw do
  resources :quests
  root "quests#new"
  get "quests", to:"quests#new"
end
