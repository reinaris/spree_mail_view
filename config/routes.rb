Spree::Core::Engine.routes.draw do
  if Rails.env.development?
    mount MailPreview => 'mail_view'
  end
end
