class HomeController < ApplicationController
# before_filter :authenticate_user!
def index
  if current_user
    redirect_to current_user
  else
    render layout: false
  end
end

end