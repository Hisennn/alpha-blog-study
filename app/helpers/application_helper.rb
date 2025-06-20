module ApplicationHelper
  def gravatar_for(user, options = { size: 100 })
    email_address = user.email.downcase
    hash = Digest::SHA256.hexdigest(email_address)
    size = options[:size]
    gravatar_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "w-[200px] h-[200px] rounded-full mx-auto")
  end
end
