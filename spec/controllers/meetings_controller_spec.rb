require 'spec_helper'

describe MeetingsController do

  describe "handling Index" do
    it 'should list all the meetings' do
      @meetings = mock_model(Meeting)
      Meeting.stub!(:find).with(:all).and_return(true)
      response.should be_success
      get :index
    end
  end

  describe "handling GET/new" do
    it 'should create a new meeting' do
      get :new
    end
  end

  describe "handling GET/show" do
    it 'should list particular meeting' do
      meeting = mock_model(Meeting)
      Meeting.stub!(:find).and_return(true)
      response.should be_success
      get :show , :id => meeting.id
    end
  end

  describe "handling GET/edit" do
    it 'should edit particular meeting' do
      meeting = mock_model(Meeting)
      Meeting.stub!(:find).and_return(true)
      response.should be_success
      get :edit , :id => meeting.id
    end
  end

  describe "handling POST/create" do
    it 'should create new meeting' do
      post :new
    end
  end

  describe "handling PUT/update" do
    it 'should update particular meeting' do
      meeting = mock_model(Meeting)
      Meeting.stub!(:find).and_return(true)
      response.should be_success
      put :edit , :id => meeting.id
    end
  end

  
  
end
