require "contacts"
require "rspec"
require "pry"

describe Contact do

  describe '#initialize'
  it "initializes the Name object and returns first name" do
    test_contact = Contact.new({:first_name => "Kat", :last_name => "Gifford", :street => "114 nw winding way", :city => "Covington", :state => "KY", :zip => "", :email => "", :cell => ""})
    expect(test_contact.name.first).to(eq("Kat"))
  end
  it "initializes the Name object and returns last name" do
    test_contact = Contact.new({:first_name => "Kat", :last_name => "Gifford", :street => "114 nw winding way", :city => "Covington", :state => "KY", :zip => "", :email => "", :cell => ""})
    expect(test_contact.name.last).to(eq("Gifford"))
  end

  it "initializes the address object and returns the street address" do
    test_contact = Contact.new({:first_name => "Kat", :last_name => "Gifford", :street => "114 nw winding way", :city => "Covington", :state => "KY", :zip => "", :email => "", :cell => ""})
    expect(test_contact.address.street).to(eq("114 nw winding way"))
  end
  it "initializes the address object and returns the city" do
    test_contact = Contact.new({:first_name => "Kat", :last_name => "Gifford", :street => "114 nw winding way", :city => "Covington", :state => "KY", :zip => "", :email => "", :cell => ""})
    expect(test_contact.address.city).to(eq("Covington"))
  end
  it "initializes the address object and returns the state" do
    test_contact = Contact.new({:first_name => "", :last_name => "", :street => "", :city => "Covington", :state => "KY", :zip => "", :email => "", :cell => ""})
    expect(test_contact.address.state).to(eq("KY"))
  end
  it "initializes the address object and returns the zip code" do
    test_contact = Contact.new({:first_name => "Kat", :last_name => "Gifford", :street => "114 nw winding way", :city => "Covington", :state => "KY", :zip => "41011", :email => "", :cell => ""})
    expect(test_contact.address.zip).to(eq("41011"))
  end

  it "initializes the email object and returns the email" do
    test_contact = Contact.new({:first_name => "Kat", :last_name => "", :street => "", :city => "", :state => "", :zip => "", :email => "piKatso@me.com", :cell => ""})
    expect(test_contact.email.personal).to(eq("piKatso@me.com"))
  end

  it "initializes the phone object and returns the cell" do
    test_contact = Contact.new({:first_name => "Kat", :last_name => "", :street => "", :city => "", :state => "", :zip => "", :email => "", :cell => "5036082203"})
    expect(test_contact.phone.cell).to(eq("5036082203"))
  end
end
