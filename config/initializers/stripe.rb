if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_Z8oG6qpF0Kf8bPYdvC54yGMt',
    :secret_key => 'sk_test_HF28nuj1rqctsazVzkruXV5G'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]