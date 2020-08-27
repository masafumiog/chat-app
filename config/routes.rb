Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end
end


# resourcesメソッド .railsで定義されている7つのアクションのルーティングを自動で生成するメソッド
# onlyオプションを使うことで必要なアクションのみ生成させる