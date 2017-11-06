require 'spec_helper'


describe 'testing the katalon page to make an appointment' do

  before(:all) do
    @session = Katalon.new
    @session.getting_to_website
  end

  context 'going to the homepage of the katalon website' do

    it 'checks if the url is the correct url' do
      expect(@session.url_check).to eql('http://demoaut.katalon.com/')
    end

    it 'clicks the make apppointment button' do
    	expect(@session.make_appointment)
    end
  end

  context 'once clicked onto the apppointment button' do
  	it 'it clicks onto the login page' do
    	expect(@session.login_for_appointment)
    end

  	it 'select which facility to choose' do
  		@session.select_facility
    	expect(@session).to have_select('combo_facility', selected: "Seoul CURA Healthcare Center")
    end

  	it 'select the readmission tickbox' do
    	expect(@session.hospital_admission)
    end

  	it 'select the appropriate healthcare' do
    	expect(@session.healthcare_program_choice)
    end

  	it 'select a date for the visit' do
    	expect(@session.selecting_a_date)
    end
  end

end