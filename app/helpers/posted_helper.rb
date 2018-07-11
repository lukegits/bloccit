module PostedHelper
  def user_has_posted?
        if current_user && (current_user_posts < 1)
          "{user.name} has not submitted any posts yet."
   end
end
end
