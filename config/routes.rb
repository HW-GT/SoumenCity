Rails.application.routes.draw do

  root :to => 'pages#index'

  # ユーザー登録と編集
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", :registrations => 'registrations' }
  resources :users, only: [:show]

  # その他の処理
  get '/dashboard/:id' => 'pages#dashboard', as: 'dashboard'


  # 概要表示
  get '/about' => 'pages#about'
  get '/dna' => 'pages#dna'
  get '/rule' => 'pages#rule'
  get '/forcustomer' => 'pages#forcustomer'
  get '/forbuyer' => 'pages#forbuyer'
  get '/formember' => 'pages#formember'

  # 店舗情報
  get 'companies/new'
  post 'companies/create'
  get 'companies/show'
  get 'companies/edit'
  patch 'companies/update'

  # お知らせ表示
  get 'information/index'
  get 'information/show'

  # 利用規約＆ガイドライン表示  
  get '/shopping' => 'legals#shopping' 
  get '/terms' => 'legals#terms' 
  get '/privacy' => 'legals#privacy' 
  get '/transactions' => 'legals#transactions'
  get '/team' => 'legals#team' 



  
end
