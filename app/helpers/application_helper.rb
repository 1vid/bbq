module ApplicationHelper
  def user_avatar(user)
    # TODO: Implement user_avatar
    asset_pack_path('media/images/user.png')

  end

  def devise_mapping
    Devise.mappings[:user]
  end
end
