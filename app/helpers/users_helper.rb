module UsersHelper
  def commentcheck
    render @user.comments
  end
  def postscheck
    render @user.posts
  end
end
