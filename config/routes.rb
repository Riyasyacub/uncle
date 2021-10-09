Rails.application.routes.draw do
  get 'sites/home'
  get 'sites/contact'
  get 'sites/services'
  get 'sites/news'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'pages#index'
  get 'pages/details'
  get '/print/:id/:format', to: 'pages#print', as: 'print'
  get '/print_money/:id/:format', to: 'pages#print_money', as: 'print_money'
  get '/flight', to: 'pages#flight', as: 'flight'
  get '/train', to: 'pages#train', as: 'train'
  get '/money', to: 'pages#money', as: 'money'
  post '/entry_update', to: 'pages#entry_update', as: "entry_update"
  post '/money_update', to: 'pages#money_update', as: "money_update"
  get '/search_money', to: 'pages#search_money', as: 'search_money'
  get '/reprint_ticket', to: 'pages#reprint_ticket', as: 'reprint_ticket'
  get '/reprint_money', to: 'pages#reprint_money', as: 'reprint_money'
  get '/others', to: 'pages#other', as: "other"
  get '/reprint_other', to: 'pages#reprint_other' , as: 'reprint_other'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
