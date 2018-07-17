module UsersHelper
  def commentcheck
    if @user.comments > 0
      return true
    else
      return false
  end
end
  def postscheck
    if @user.posts > 0
      return true
    else
      return false
  end
end
end
