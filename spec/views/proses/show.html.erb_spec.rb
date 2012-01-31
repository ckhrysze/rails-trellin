require 'spec_helper'

describe "proses/show" do
  before(:each) do
    @prose = assign(:prose, stub_model(Prose,
      :content => "Content",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
