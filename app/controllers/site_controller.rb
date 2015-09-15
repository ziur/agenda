class SiteController < ApplicationController
  def index
    # retrieve all Bookmarks ordered by descending creation timestamp
    @contacts = Contact.order('created_at desc')
  end
end
