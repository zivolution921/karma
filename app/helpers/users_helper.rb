module UsersHelper
  def action_buttons(user)
    case current_user.friendship_status(user) when "friends"
      "Remove Friendship"
    when "pending"
      "Cancel Request"
    when "requested"
      "Accept or Deny"
    when "not_friends"
      "Add as a Friend"
      link_to "Add as Friend", friendships_path(user_id: user.id), method: :post
    end
  end
end