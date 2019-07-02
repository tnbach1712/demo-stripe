class PaymentsControllerController < ApplicationController
  def index
  end

  def payment
    Stripe.api_key = 'sk_test_hqqOkX6cuDrFxX1fuuJsvk3800gM99LYLK'

    # @intent = Stripe::PaymentIntent.create(
    #   amount: 1099,
    #   currency: 'usd',
    #   setup_future_usage: 'off_session',
    # )

  #   # customer = Stripe::Customer.create({
  #   #   payment_method: "pm_1ErmoNKH6NeZOubOrDyI8KAh",
  #   #   email: User.last.username,
  #   # })
  #   # User.last.update_attributes(stripe_customer_id: customer.id )

  #   charge = Stripe::Charge.create({
  #     amount: 1099, # $15.00 this time
  #     currency: 'usd',
  #     customer: User.last.stripe_customer_id, # Previously stored, then retrieved
  # })
  #   payment_method = Stripe::PaymentMethod.attach(
  #    "pm_1ErmzbKH6NeZOubOCQ7bnUPu",
  #     {
  #       customer: User.last.stripe_customer_id,
  #     }
  #   )
  #   cards = Stripe::Customer.list_sources(
  #     'cus_FMWWDgvVN0lTi9',
  #     {
  #       limit: 3,
  #       # object: 'card',
  #     }
  #   )
  #   ms = Stripe::PaymentMethod.list(customer: User.last.stripe_customer_id, type: "card")
  

    # @intent = Stripe::PaymentIntent.create({
    #   amount: 1099,
    #   currency: 'usd',
    #   customer: User.last.stripe_customer_id,
    #   payment_method: 'pm_1ErmzbKH6NeZOubOCQ7bnUPu',
    # })

    intent = Stripe::PaymentIntent.create({
      amount: 1099,
      currency: 'usd',
      payment_method_types: ['card'],
      customer: User.last.stripe_customer_id,
      payment_method: 'pm_1ErmzbKH6NeZOubOCQ7bnUPu',
      off_session: true,
      confirm: true,
    })
  end
end
