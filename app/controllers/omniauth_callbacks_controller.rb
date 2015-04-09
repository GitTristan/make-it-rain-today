class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def stripe_connect
    user = User.where(email: omniauth_attrs["info"]["email"]).first_or_create

    user_auth_attrs = {
      provider: request.env["omniauth.auth"].provider,
      uid: request.env["omniauth.auth"].uid,
      access_code: request.env["omniauth.auth"].credentials.token,
      publishable_key: request.env["omniauth.auth"].info.stripe_publishable_key
    }

    if user.update_attributes(user_auth_attrs)
      # anything else you need to do in response..
      # sign_in_and_redirect user, :event => :authentication
      sign_in(user)
      set_flash_message(:notice, :success, :kind => "Stripe") if is_navigational_format?
      redirect_to user_path(user)
    else
      session["devise.stripe_connect_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

private

  def omniauth_attrs
    request.env["omniauth.auth"]
  end
end
