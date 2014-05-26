require "spec_helper"

describe MessageTemplatesController do
  describe "routing" do

    it "routes to #index" do
      get("/message_templates").should route_to("message_templates#index")
    end

    it "routes to #new" do
      get("/message_templates/new").should route_to("message_templates#new")
    end

    it "routes to #show" do
      get("/message_templates/1").should route_to("message_templates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/message_templates/1/edit").should route_to("message_templates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/message_templates").should route_to("message_templates#create")
    end

    it "routes to #update" do
      put("/message_templates/1").should route_to("message_templates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/message_templates/1").should route_to("message_templates#destroy", :id => "1")
    end

  end
end
