module UsersHelper

  def user_has_post? user
    if user.posts.count > 0
      "#{user.name}"
    else
      "#{user.name} has not submitted any posts yet."
    end
  end
end
