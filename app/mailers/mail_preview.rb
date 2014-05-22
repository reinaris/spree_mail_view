class MailPreview < MailView
  def order_confirm_email
    order = Spree::Order.complete.first
    Spree::OrderMailer.confirm_email(order)
  end

  def order_cancel_email
    order = Spree::Order.complete.first
    Spree::OrderMailer.cancel_email(order)
  end

  def shipment_email
    shipment = Spree::Shipment.first
    Spree::ShipmentMailer.shipped_email(shipment)
  end

  def forgot_password
    user = Spree::User.first
    Spree::UserMailer.reset_password_instructions(user, 'token goes here')
  end
end
