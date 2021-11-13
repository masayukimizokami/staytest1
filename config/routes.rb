Rails.application.routes.draw do

  devise_for :users
  root to: "home#index"
  resources :users
  resources :rooms
  get 'reservation/new' # 入力画面
  post 'reservation/confirm' # 確認画面
  post 'reservation/back' # 確認画面から「入力画面に戻る」をクリックしたとき
  post 'reservation/complete' # 完了画面
  get '/search', to: 'searchs#search'
end
