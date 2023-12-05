class ContactsController < ApplicationController
  def search
    value = params["searchKey"]

    contacts = Contact.where('contact_number like ? or name like ?', "#{value}%", "#{value}%")
    render json: contacts
  end
end
