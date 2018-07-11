module CommentedHelper
  def user_has_posted?
        if current_user && (current_user_comments < 1)
          "{user.name} has not submitted any comments yet."
   end
end
end
