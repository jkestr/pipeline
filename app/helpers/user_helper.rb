module UserHelper

  def user_registerable?
    Devise.mappings[:user].registerable?
  end

  def user_recoverable?
    Devise.mappings[:user].recoverable?
  end

  def user_confirmable?
    Devise.mappings[:user].confirmable?
  end

end

