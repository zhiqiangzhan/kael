require 'spec_helper'

describe "MessageDatasources" do
  describe "GET /message_datasources" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get message_datasources_path
      response.status.should be(200)
    end
  end
end
