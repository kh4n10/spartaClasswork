require 'spec_helper'
require 'rspec'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eql('http://demoqa.com/registration/')
    end

    it 'should accept a first name' do
      @driver.set_first_name_field("Frank")
      expect(@driver.get_first_name_field_value).to be_instance_of String
    end

    it 'should accept a last name' do
      @driver.set_last_name_field("Ocean")
      expect(@driver.get_last_name_field_value).to be_instance_of String
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      expect(@driver.select_marital_option("Single")).to be(true)
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      expect(@driver.select_hobby_option("Dance")).to be(true)
    end

    it 'should have a country default of Afhghanistan' do
      @driver.country_dropdown_list_select('')
      expect(@driver.get_selected_country).to eql('Afghanistan')
    end

    it 'accept a new DOB' do
      @driver.dob_month_list_select("9")
      @driver.dob_day_list_select(21)
      @driver.dob_year_list_select(1996)

      expect(@driver.get_dob_day).to eql("9")

    end

    it 'should accept a new country value' do

    end

    it 'should accept a valid phone number' do

    end

    it 'should accept a username' do

    end

    it 'should accept a about yourself text' do

    end

    it 'should accept a password' do

    end

    it 'should accept a password confirmation' do

    end

  end

end