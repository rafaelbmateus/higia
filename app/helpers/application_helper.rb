module ApplicationHelper
  def is_active_controller(controller_name, class_name = nil)
    if params[:controller] == controller_name
     class_name == nil ? "active" : class_name
    else
     nil
    end
  end

  def is_active_controller_action(controller_name, action_name)
    if params[:controller] == controller_name && params[:action] == action_name
      "active"
    else
      nil
    end
  end

  def gravatar_url(email, size)
    gravatar = Digest::MD5::hexdigest(email).downcase
    url = "http://gravatar.com/avatar/#{gravatar}.png?s=#{size}"
  end
end
