Rails.application.routes.draw do
  devise_for :users
  root to: "messages#index"
  resources :users, only: [:edit, :update]
end

# resourcesメソッド .railsで定義されている7つのアクションのルーティングを自動で生成するメソッド
# onlyオプションを使うことで必要なアクションのみ生成させる