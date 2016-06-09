class ThingsController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'things'
      end
    end
  end
end
