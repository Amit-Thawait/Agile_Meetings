require 'spec_helper'

describe MeetingTypesController do

  describe "handling Index" do
    it 'should list all the meeting types' do
      @meeting_types = mock_model(MeetingType)
      MeetingType.stub!(:find).with(:all).and_return(true)
      response.should be_success
      get :index
    end
  end

  describe "handling GET/new" do
    it 'should create a new meeting type' do
      get :new
    end
  end

  describe "handling GET/show" do
    it 'should list particular meeting type' do
      meeting_type = mock_model(MeetingType)
      MeetingType.stub!(:find).and_return(true)
      response.should be_success
      get :show , :id => meeting_type.id
    end
  end

  describe "handling GET/edit" do
    it 'should edit particular meeting type' do
      meeting_type = mock_model(MeetingType)
      MeetingType.stub!(:find).and_return(true)
      response.should be_success
      get :edit , :id => meeting_type.id
    end
  end

  describe "handling POST/create" do
    it 'should create new meeting type' do
      post :new
    end
  end

  describe "handling PUT/update" do
    it 'should update particular meeting type' do
      meeting_type = mock_model(MeetingType)
      MeetingType.stub!(:find).and_return(true)
      response.should be_success
      put :edit , :id => meeting_type.id
    end
  end  
  
end
