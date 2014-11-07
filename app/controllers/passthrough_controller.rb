class PassthroughController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
      if current_user.present?
        path = dashboard_path(current_user.id)
      else
        path = splash_path
      end
    redirect_to path
  end

end
