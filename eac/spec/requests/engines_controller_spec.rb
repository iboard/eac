describe EnginesController do

  
  it "should list all available engines" do
    visit root_path
    page.should have_link 'EACUSR'
    page.should have_link 'EACTHEME'
  end


end