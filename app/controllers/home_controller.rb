class HomeController < ApplicationController
  layout 'www'
  def index
    @users = User.all
    @faqs = Faq.all
  end
end
