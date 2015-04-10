# Stripe.api_key = ENV['STRIPE_API_KEY'] # Set your api key
#
# StripeEvent.configure do |events|
#   # events.subscribe 'charge.succeeded' do |event|
#   #   # Define subscriber behavior based on the event object
#   #   event.class       #=> Stripe::Event
#   #   event.type        #=> "charge.succeeded"
#   #   event.data.object #=> #<Stripe::Charge:0x3fcb34c115f8>
#   # end
#   #
#   #
#   # events.all do |event|
#   #   # Handle all event types - logging, etc.
#   # end
#   events.subscribe 'charge.succeeded', ChargeSucceeded.new
# end
#
# class ChargeSucceeded
#   def call(event)
# #binding.pry
#     # call to Slack
#   end
# end
