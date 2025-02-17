module ApplicationHelper
  def paths_without_header
    [ new_user_session_path, new_user_registration_path ]
  end
end
