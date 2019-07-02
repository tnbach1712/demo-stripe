class User < ApplicationRecord
  
  def create_stripe_customer
    if stripe_customer_id.blank?
      Stripe.api_key = 'sk_test_hqqOkX6cuDrFxX1fuuJsvk3800gM99LYLK'
      customer = Stripe::Customer.create({
        payment_method: intent.payment_method,
        email: username
      })
      update_attributes(stripe_customer_id: customer.id )
    end
  end
  
  def update_default_stripe(payment_method)
    Stripe::Customer.update(
      self.stripe_customer_id,
      {
        invoice_settings: {
          default_payment_method: payment_method
        },
      }
    )
  end
end
