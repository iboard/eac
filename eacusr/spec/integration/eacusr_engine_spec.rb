require File.expand_path('../../spec_helper',__FILE__)


describe Eacusr do
  it "should get engine's root-path" do
    visit "/eacusr"
    page.should have_content "EACUSR User-Engine"
  end
end
