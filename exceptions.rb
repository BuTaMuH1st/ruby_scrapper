class NotLoggedIn < StandardError
  def initialize(msg = 'Cannot log out because you`re not logged in')
    super
  end
end
