require "spec_helper"

describe ProsesController do
  describe "routing" do

    it "routes to #index" do
      get("/proses").should route_to("proses#index")
    end

    it "routes to #new" do
      get("/proses/new").should route_to("proses#new")
    end

    it "routes to #show" do
      get("/proses/1").should route_to("proses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/proses/1/edit").should route_to("proses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/proses").should route_to("proses#create")
    end

    it "routes to #update" do
      put("/proses/1").should route_to("proses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/proses/1").should route_to("proses#destroy", :id => "1")
    end

  end
end
