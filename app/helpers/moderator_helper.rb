module ModeratorHelper
  def user_is_moderator_for_post?(post)
        current_user && (current_user.moderator?)
   end
end
