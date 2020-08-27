class ApplicationController < ActionController::Base
  # ログインしていないユーザーをログインページの画面に促す
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

#全てのアクションが実行される前に実行させる→gefore_action

  protected
      # 構成、設定 許可された パラメーター
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end

# devise_parameter_sanitizerメソッド 「特定のカラムを許容する」

# permitメソッド 「許可する」メソッド