class FeedBack < ActiveRecord::Base
  attr_accessible :email, :message, :mobile, :name

  validates :email, :message, :mobile, :name, :presence => true
  validates :email, :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  validates :mobile, :length => {:minimum => 10, :maximum => 13}, :format => { :with => /\A\S[0-9\+\/\(\)\s\-]*\z/i }
end
