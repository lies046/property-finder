module ApplicationHelper

  def profile_picture account, width = 100
    thumb = account.image.present? ? account.image.url : "default.png"
    image_tag thumb, width: width, class: "profile-pic img-circle"
  end
end
