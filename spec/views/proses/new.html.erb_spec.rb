require 'spec_helper'

describe "proses/new" do
  before(:each) do
    assign(:prose, stub_model(Prose,
      :content => "MyString",
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new prose form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => proses_path, :method => "post" do
      assert_select "input#prose_content", :name => "prose[content]"
      assert_select "input#prose_title", :name => "prose[title]"
    end
  end
end
