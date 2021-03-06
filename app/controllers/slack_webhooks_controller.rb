class SlackWebhooksController < ApplicationController

  def new
    @random_gif = [ "http://i.imgur.com/ptqA6dW.gif",
                    "http://i.imgur.com/r1o0uyH.gif",
                    "http://i.imgur.com/N0aYJTJ.gif",
                    "http://i.imgur.com/j25gaOc.gif",
                    "http://i.imgur.com/tkbHsDZ.gif",
                    "http://i.imgur.com/HaNu5ka.gif",
                    "http://i.imgur.com/5ZcUxTg.gif",
                    "http://i.imgur.com/5CiZA5v.gif",
                    "http://i.imgur.com/nDUasjq.gif",
                    "http://i.imgur.com/8ExBVb4.gif",
                    "http://i.imgur.com/cskbcM2.gif",
                    "http://i.imgur.com/49tP7pc.gif",
                    "http://i.imgur.com/28bfK1I.gif",
                    "http://i.imgur.com/ERyoPf3.gif",
                    "http://i.imgur.com/PbADlZW.gif",
                    "http://i.imgur.com/dgBtPpD.gif",
                    "http://i.imgur.com/2BgTeUI.gif",
                    "http://i.imgur.com/gh7uW50.gif",
                    "http://i.imgur.com/6fYah3Z.gif",
                    "http://i.imgur.com/yuB67q5.gif",
                    "http://i.imgur.com/JeEHZL9.gif",
                    "http://i.imgur.com/BxFlFvv.gif",
                    "http://i.imgur.com/n6K78PG.gif",
                    "http://i.imgur.com/AbHWKoc.gif"
                  ].sample

    notifier = Slack::Notifier.new "#{current_user.slack_webhook}"

    notifier.channel  = "#{current_user.slack_channel}"
    notifier.username = 'makeitrain.today'
    notifier.ping "#{@random_gif}", icon_emoji: ":heavy_dollar_sign:"

    redirect_to user_path(current_user.id)
  end


end
