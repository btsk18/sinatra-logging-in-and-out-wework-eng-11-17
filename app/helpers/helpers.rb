require 'pry'

class Helpers

  def self.current_user(session)
    user = User.find(session[:user_id])
  end

  def self.is_logged_in?(session)
    binding.pry
    session.keys.include?(:user_id)
  end
end
