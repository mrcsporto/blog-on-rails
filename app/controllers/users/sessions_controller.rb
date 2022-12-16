class Users::SessionsController < Devise::SessionsController
  auto_session_timeout_actions
end
