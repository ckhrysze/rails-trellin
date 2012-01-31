require 'spec_helper'

describe "proses/edit" do
  before(:each) do
    @prose = assign(:prose, stub_model(Prose,
      :content => "MyString",
      :title => "MyString"
    ))
  end

  it "renders the edit prose form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => proses_path(@prose), :method => "post" do
      assert_select "input#prose_content", :name => "prose[content]"
      assert_select "input#prose_title", :name => "prose[title]"
    end
  end
end
