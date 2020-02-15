Rails.application.routes.draw do

  devise_for :users
  root to: "items#index" #トップページ
  resources :items, only: [:index, :new, :create]
  get 'signin' => 'items#signin' #サインインページ

  #各ページの内容の概要（実装完了したものから消してください）
  # get 'details' => 'items#details' #商品詳細ページ
  # get 'verification' => 'items#verification' #購入内容確認
  # get 'logout' => 'items#logout' #マイページのログアウト
  # get 'identification' => 'items#identification' #マイページの本人情報登録
  # get 'tell' => 'items#tell' #新規登録の電話番号認証
  # get 'doneview' => 'items#doneview' #新規登録の完了画面
  # get 'address' => 'items#address' #新規登録の住所登録 
  # get 'paymethod' => 'items#paymethod' ##新規登録のお支払い方法
  # get 'register_credit' => 'items#register_credit' #マイページの支払い方法
  # get 'profile' => 'mypages#profile' #マイページのプロフィール編集
  # get 'mypages' => 'mypages#index' #マイページ
end
