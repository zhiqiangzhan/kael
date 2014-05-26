require 'spec_helper'

describe "message_datasources/new" do
  before(:each) do
    assign(:message_datasource, stub_model(MessageDatasource,
      :name => "MyString",
      :adapter => "MyString",
      :params => "MyString"
    ).as_new_record)
  end

  it "renders new message_datasource form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", message_datasources_path, "post" do
      assert_select "input#message_datasource_name[name=?]", "message_datasource[name]"
      assert_select "input#message_datasource_adapter[name=?]", "message_datasource[adapter]"
      assert_select "input#message_datasource_params[name=?]", "message_datasource[params]"
    end
  end
end
