require File.expand_path('../../spec_helper',__FILE__)


describe Eactheme do
  it "should get engine's root-path" do
    visit "/eactheme"
    page.should have_content "EACTHEME Theme-Engine"
  end
end
