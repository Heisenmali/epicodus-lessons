module Phonebook
  # def contacts
  #   @contacts
  # end

  @@contacts = []

  # def contacts=(contact)
  #   @contacts = contact
  # end
end


class Contact

  include Phonebook

  # @@contacts = []

  def Contact.all
    @@contacts
    # Contact.contacts
  end

  def Contact.clear
    @@contacts = []
    # Contact.contacts = []
  end

  def save
    @@contacts.push(self)
    # Contact.contacts.push(self)
  end

  def Contact.find(first_name)
    Contact.all.each do |contact|
      if contact.name.first == first_name
        return contact.name.last
      else
        nil
      end
    end
  end

  attr_accessor :name
  attr_accessor :address
  attr_accessor :email
  attr_accessor :phone

  def initialize(attribute)

    self.name = Name.new(attribute.fetch(:first_name), attribute.fetch(:last_name))
    self.address = Address.new(attribute.fetch(:street), attribute.fetch(:city), attribute.fetch(:state), attribute.fetch(:zip))
    self.email = Email.new(attribute.fetch(:email))
    self.phone = Phone.new(attribute.fetch(:cell))

  end
end

class Name

  attr_accessor :first
  attr_accessor :last

  def initialize(first_name, last_name)
    self.first = first_name
    self.last = last_name
  end
end

class Address

  attr_accessor :street
  attr_accessor :city
  attr_accessor :state
  attr_accessor :zip

  def initialize(street, city, state, zip)
    self.street = street
    self.city = city
    self.state = state
    self.zip = zip
  end
end

class Email

  attr_accessor :personal

  def initialize(email)
    self.personal = email
  end
end

class Phone

  attr_accessor :cell
  # attr_accessor :home
  # attr_accessor :work

  def initialize(phone)
    self.cell = phone
    # self.home =
  end
end


# module Test
#   @@variable = "Kat"
# end
#
# class Giff
#
#   include Test
#
#   def modify_var
#     @@variable = "Cat"
#   end
#
#   def variable
#     @@variable
#   end
#
# end
