require "spec_helper"

describe AttendeesController do
  describe "routing" do

    it "routes to #index" do
      get("/attendees").should route_to("attendees#index")
    end

    it "routes to #new" do
      get("/attendees/new").should route_to("attendees#new")
    end

    it "routes to #show" do
      get("/attendees/1").should route_to("attendees#show", :id => "1")
    end

    it "routes to #edit" do
      get("/attendees/1/edit").should route_to("attendees#edit", :id => "1")
    end

    it "routes to #create" do
      post("/attendees").should route_to("attendees#create")
    end

    it "routes to #update" do
      put("/attendees/1").should route_to("attendees#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/attendees/1").should route_to("attendees#destroy", :id => "1")
    end

  end
end
