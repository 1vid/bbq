module ApplicationHelper
  def user_avatar(user)
    if user.avatar.attached?
      user.avatar.variant(resize_to_fit: [200, 200])
    else
      asset_pack_path('media/images/user.png')
    end
  end

  def devise_mapping
    Devise.mappings[:user]
  end

  def fa_icon(icon_class)
    content_tag 'span', '', class: "fa fa-#{icon_class}"
  end
end
