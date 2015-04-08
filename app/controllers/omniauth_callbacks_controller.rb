class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def stripe_connect
binding.pry
    auth_email = omniauth_hash['info']['email']
    user = User.find_by(email: auth_email) || User.create(email: auth_email)  # drop password shit, unneeded

    user_attrs = {
      provider: request.env["omniauth.auth"].provider,
      uid: request.env["omniauth.auth"].uid,
      access_code: request.env["omniauth.auth"].credentials.token,
      publishable_key: request.env["omniauth.auth"].info.stripe_publishable_key
    }
binding.pry
    if user.update_attributes(user_attrs)
     # anything else you need to do in response..
      set_flash_message(:notice, :success, :kind => "Stripe") if is_navigational_format?
      sign_in_and_redirect user, :event => :authentication
    else
      # redirect nuclear option, like flash error "this is mega broken, go someplace else"
      session["devise.stripe_connect_data"] = request.env["omniauth.auth"]
      redirect_to root_url
    end
  end

private

  def omniauth_hash
    # {"provider"=>"stripe_connect",
    #  "uid"=>"acct_102gJs2bi9H7ZxAl",
    #  "info"=>
    #   {"name"=>"rebill.co",
    #    "email"=>"tristan@rebill.co",
    #    "nickname"=>"rebill.co",
    #    "scope"=>"read_only",
    #    "livemode"=>false,
    #    "stripe_publishable_key"=>"pk_test_Um9pey5kw4XOxjAKFSmDRhd8"},
    #  "credentials"=>{"token"=>"sk_test_o43QutpXGx46aed5ugva89am", "expires"=>false, "refresh_token"=>"rt_61TlBqK1H3hyibrNqPwmYlKjuaD3YT3EHkWLrSZmpUfoGLRP"},

    request.env["omniauth.auth"]
  end
end
