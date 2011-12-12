require "spec_helper"

describe TechnologiesController do
  describe "routing" do

    it "routes to #index" do
      get("/technologies").should route_to("technologies#index")
    end

    it "routes to #new" do
      get("/technologies/new").should route_to("technologies#new")
    end

    it "routes to #show" do
      get("/technologies/1").should route_to("technologies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/technologies/1/edit").should route_to("technologies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/technologies").should route_to("technologies#create")
    end

    it "routes to #update" do
      put("/technologies/1").should route_to("technologies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/technologies/1").should route_to("technologies#destroy", :id => "1")
    end

  end
end
