require "spec_helper"

describe MessageDatasourcesController do
  describe "routing" do

    it "routes to #index" do
      get("/message_datasources").should route_to("message_datasources#index")
    end

    it "routes to #new" do
      get("/message_datasources/new").should route_to("message_datasources#new")
    end

    it "routes to #show" do
      get("/message_datasources/1").should route_to("message_datasources#show", :id => "1")
    end

    it "routes to #edit" do
      get("/message_datasources/1/edit").should route_to("message_datasources#edit", :id => "1")
    end

    it "routes to #create" do
      post("/message_datasources").should route_to("message_datasources#create")
    end

    it "routes to #update" do
      put("/message_datasources/1").should route_to("message_datasources#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/message_datasources/1").should route_to("message_datasources#destroy", :id => "1")
    end

  end
end
