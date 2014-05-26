require 'spec_helper'

describe "message_datasources/edit" do
  before(:each) do
    @message_datasource = assign(:message_datasource, stub_model(MessageDatasource,
      :name => "MyString",
      :adapter => "MyString",
      :params => "MyString"
    ))
  end

  it "renders the edit message_datasource form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", message_datasource_path(@message_datasource), "post" do
      assert_select "input#message_datasource_name[name=?]", "message_datasource[name]"
      assert_select "input#message_datasource_adapter[name=?]", "message_datasource[adapter]"
      assert_select "input#message_datasource_params[name=?]", "message_datasource[params]"
    end
  end
end
