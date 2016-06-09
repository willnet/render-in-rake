class ThingsController < ApplicationController
  def index
    @user_name = 'willnet'
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'things'
      end
    end
  end
end
