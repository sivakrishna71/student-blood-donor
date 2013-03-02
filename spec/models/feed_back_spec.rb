require 'spec_helper'

describe FeedBack do

  before(:all) do
    @feed_back1 = FactoryGirl.create(:feed_back, :name => 'siva', :mobile => '8121114614', :message => 'MyTestFeedBack')
    @feed_back2 = FactoryGirl.create(:feed_back)
    @feed_backs = FeedBack.all
  end
  
  after(:all) do
    FeedBack.destroy_all
  end

  context "name" do
  	it "Should not be nil" do
      @feed_back1.name.should_not be_nil
  	end
    it "Should raise error if nil is saved" do
     feed_back = FeedBack.new
     feed_back.save
     feed_back.errors.messages[:name].should == ["can't be blank"]
    end
  end

  context "email" do
    it "Should not be nil" do
      @feed_back1.email.should_not be_nil
    end
    it "Should raise error if nil is saved" do
     feed_back = FeedBack.new
     feed_back.save
     feed_back.errors.messages[:email].should == ["can't be blank", "is invalid"]
     feed_back.errors.messages.clear
     feed_back.email = "abc"
     feed_back.save
     feed_back.errors.messages[:email].should == ["is invalid"]
    end
  end

  context "message" do
    it "Should not be nil" do
      @feed_back1.message.should_not be_nil
    end
    it "Should raise error if nil is saved" do
     feed_back = FeedBack.new
     feed_back.save
     feed_back.errors.messages[:message].should == ["can't be blank"]
    end
  end

  context "mobile" do
    it "Should not be nil" do
      @feed_back1.mobile.should_not be_nil
    end
    it "Should raise error if nil is saved" do
     feed_back = FeedBack.new
     feed_back.save
     feed_back.errors.messages[:mobile].should == ["can't be blank", "is too short (minimum is 10 characters)", "is invalid"]
     feed_back.errors.messages.clear
     feed_back.mobile = "abc"
     feed_back.save
     feed_back.errors.messages[:mobile].should == ["is too short (minimum is 10 characters)", "is invalid"]
     feed_back.errors.messages.clear
     feed_back.mobile = "abcdefghij"
     feed_back.save
     feed_back.errors.messages[:mobile].should == ["is invalid"]     
    end
  end
end
