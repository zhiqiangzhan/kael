require "spec_helper"

describe MessageConfigsController do
  describe "routing" do

    it "routes to #index" do
      get("/message_configs").should route_to("message_configs#index")
    end

    it "routes to #new" do
      get("/message_configs/new").should route_to("message_configs#new")
    end

    it "routes to #show" do
      get("/message_configs/1").should route_to("message_configs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/message_configs/1/edit").should route_to("message_configs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/message_configs").should route_to("message_configs#create")
    end

    it "routes to #update" do
      put("/message_configs/1").should route_to("message_configs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/message_configs/1").should route_to("message_configs#destroy", :id => "1")
    end

  end
end
