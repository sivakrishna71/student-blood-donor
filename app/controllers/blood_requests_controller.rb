class BloodRequestsController < ApplicationController
  load_and_authorize_resource
  layout 'www'

  def new
  end
end
