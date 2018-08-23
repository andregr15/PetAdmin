class EmailConfirmationsController < ApplicationController
  def opened
    email = Email.find_by!(token: params[:token])
    email.update(opened: true)

    
    send_data Base64.decode64("R0lGODlhAQABAPAAAAAAAAAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="),
      filename: "gif.gif"
      type: 'image/gif',
      disposition: 'inline',
      stream: 'true', 
      buffer_size: '4096'
    
    # gif = Base64.decode64("R0lGODlhAQABAPAAAAAAAAAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==")
    # render text: gif, type: 'image/gif', layout: false
  end
end
