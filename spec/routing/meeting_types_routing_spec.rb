require "spec_helper"

describe MeetingTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/meeting_types").should route_to("meeting_types#index")
    end

    it "routes to #new" do
      get("/meeting_types/new").should route_to("meeting_types#new")
    end

    it "routes to #show" do
      get("/meeting_types/1").should route_to("meeting_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/meeting_types/1/edit").should route_to("meeting_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/meeting_types").should route_to("meeting_types#create")
    end

    it "routes to #update" do
      put("/meeting_types/1").should route_to("meeting_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/meeting_types/1").should route_to("meeting_types#destroy", :id => "1")
    end

  end
end
