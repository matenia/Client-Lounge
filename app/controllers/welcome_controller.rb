class WelcomeController < ApplicationController
  def index
  end

  def contact
    render :layout => 'sign'
  end

end
