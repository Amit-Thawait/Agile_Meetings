require 'spec_helper'

describe AttendeesController do

  describe "handling Index" do
    it 'should list all the attendees' do
      @attendees = mock_model(Attendee)
      Attendee.stub!(:find).with(:all).and_return(true)
      response.should be_success
      get :index
    end
  end
  
  describe "handling GET/new" do
    it 'should create a new attendee' do
      get :new
    end
  end

  describe "handling GET/show" do
    it 'should list particular attendee' do
      attendee = mock_model(Attendee)
      Attendee.stub!(:find).and_return(true)
      response.should be_success
      get :show ,:id => attendee.id
    end
  end

  describe "handling GET/edit" do
    it 'should edit particular attendee' do
      attendee = mock_model(Attendee)
      Attendee.stub!(:find).and_return(true)
      response.should be_success
      get :edit ,:id => attendee.id
    end
  end

  describe "handling POST/create" do
    it 'should create a new attendee' do
      post :new
    end
  end

  describe "Handling PUT/update" do
    it 'should update particular attendee' do
      attendee = mock_model(Attendee)
      Attendee.stub!(:find).and_return(true)
      response.should be_success
      put :edit, :id => attendee.id
    end
  end

#  describe "Handling DELETE/destroy" do
#    it "deletes and redirects to the attendees list" do
#      attendee = mock_model(Attendee)
#      Attendee.stub!(:find).and_return(true)
#      delete :destroy, :id => attendee.id
#      response.should redirect_to(attendees_url)
#    end
#  end

end
