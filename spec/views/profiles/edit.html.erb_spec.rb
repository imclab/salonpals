require 'spec_helper'

describe "profiles/edit.html.erb" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :user_id => nil,
      :description => "MyText"
    ))
  end

  it "renders the edit profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => profiles_path(@profile), :method => "post" do
      assert_select "input#profile_user_id", :name => "profile[user_id]"
      assert_select "textarea#profile_description", :name => "profile[description]"
    end
  end
end
