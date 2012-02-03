require "spec_helper"

describe TextBlocksController do
  describe "routing" do

    it "routes to #index" do
      get("/text_blocks").should route_to("text_blocks#index")
    end

    it "routes to #new" do
      get("/text_blocks/new").should route_to("text_blocks#new")
    end

    it "routes to #show" do
      get("/text_blocks/1").should route_to("text_blocks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/text_blocks/1/edit").should route_to("text_blocks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/text_blocks").should route_to("text_blocks#create")
    end

    it "routes to #update" do
      put("/text_blocks/1").should route_to("text_blocks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/text_blocks/1").should route_to("text_blocks#destroy", :id => "1")
    end

  end
end
