require_relative '../app.rb'
require 'spec_helper.rb'

feature "Something goes on", %q{
        In order to ...
        As ..
        I want ...
} do
  
  before :each do
    
  end

  scenario "Root loads" do
    visit '/'
    current_path.should include '/'
    page.should have_content('Styleguide')
  end

end


