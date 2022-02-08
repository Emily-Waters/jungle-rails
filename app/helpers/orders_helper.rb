module OrdersHelper
  def get_user_info
    if session[:user_id]
      User.find(session[:user_id])
    else
      User.new
    end
  end
end
