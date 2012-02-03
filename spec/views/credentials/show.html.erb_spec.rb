require 'spec_helper'

describe "credentials/show" do
  before(:each) do
    @credential = assign(:credential, stub_model(Credential,
      :provider => "Provider",
      :uid => "Uid",
      :name => "Name",
      :email => "Email",
      :nickname => "Nickname"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Provider/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Uid/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nickname/)
  end
end
