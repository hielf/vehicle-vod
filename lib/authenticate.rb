class Authenticate
  def matches?(request)
    token = request.cookies["access_token"]
    return false unless token
    user = User.find_by(access_token: token)
    user && user.admin?
  end
end
