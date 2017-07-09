module ApplicationHelper
  def isAdmin?
    current_user && current_user.admin
  end
end
