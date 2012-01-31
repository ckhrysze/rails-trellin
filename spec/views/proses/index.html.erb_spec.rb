require 'spec_helper'

describe "proses/index" do
  before(:each) do
    assign(:proses, [
      stub_model(Prose,
        :content => "Content",
        :title => "Title"
      ),
      stub_model(Prose,
        :content => "Content",
        :title => "Title"
      )
    ])
  end

  it "renders a list of proses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
