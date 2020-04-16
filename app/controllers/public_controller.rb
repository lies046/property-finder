class PublicController < ApplicationController
  def main
    # if account_signed_in?
    #   redirect to dashboard_path, flash: { success: "Successfuly signed in. Welcome to Property Finder"} and return
    # end
    @properties = Property.latest
  end
end
