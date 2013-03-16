require "spec_helper"

describe ProjectsController do
  describe "routing" do

    it "routes to #index" do
      get("/profiles/1/projects").should route_to("projects#index", profile_id: "1")
    end

    it "routes to #new" do
      get("/profiles/1/projects/new").should route_to("projects#new", profile_id: "1")
    end

    it "routes to #show" do
      get("/profiles/1/projects/1").should route_to("projects#show", :id => "1", profile_id: "1")
    end

    it "routes to #edit" do
      get("/profiles/1/projects/1/edit").should route_to("projects#edit", :id => "1", profile_id: "1")
    end

    it "routes to #create" do
      post("/profiles/1/projects").should route_to("projects#create", profile_id: "1")
    end

    it "routes to #update" do
      put("/profiles/1/projects/1").should route_to("projects#update", :id => "1", profile_id: "1")
    end

    it "routes to #destroy" do
      delete("/profiles/1/projects/1").should route_to("projects#destroy", :id => "1", profile_id: "1")
    end

  end
end
