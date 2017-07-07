module ApplicationHelper
  def is_admin?
    current_user && current_user.admin
  end

  def is_logged_in?
    current_user
  end
end
