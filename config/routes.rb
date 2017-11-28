Rails.application.routes.draw do

  get 'information/index'

  get 'information/show'

  root :to => 'pages#index'

  # 概要表示
  get '/about' => 'pages#about'
  get '/dna' => 'pages#dna'
  get '/rule' => 'pages#rule'
  get '/forcustomer' => 'pages#forcustomer'
  get '/forbuyer' => 'pages#forbuyer'
  get '/formember' => 'pages#formember'

  # ユーザー登録
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", :registrations => 'registrations' }

  # ユーザープロフィールの表示
  resources :users, only: [:show]

  # その他の処理
  get '/dashboard/:id' => 'pages#dashboard', as: 'dashboard'


  # 利用規約＆ガイドライン表示  
  get '/shopping' => 'legals#shopping' 
  get '/terms' => 'legals#terms' 
  get '/privacy' => 'legals#privacy' 
  get '/transactions' => 'legals#transactions'
  get '/team' => 'legals#team' 

  
end
