class WarriorController < ApplicationController


  def warrior
    @user = User.find(params[:id])
    #@favorite =Favorite.all
    #@favoriteloc = @favorite.find_by(:user_id => @user.id)

    #@location = @favoriteloc.location
    @origin = URI.encode(@user.address)
    #@destination = URI.encode(@location.address)

  require 'open-uri'
  require 'json'

  #Maps Distance API code that requires further certifications
    #@distanceapi = "https://maps.googleapis.com/maps/api/distancematrix/json?key=AIzaSyBmNIvK7VCLkqNtDsQy7oOeuSXiMDZD9-4&origins="+@origin+"&destinations="+URI.encode(favorite.location.address)

    #parsed_data = JSON.parse(open(@distanceapi).read)
    #@distance = parsed_data["rows"][0]["elements"][0]["duration"]["text"][0]["status"]

#Map API
   #@embedmap = "https://www.google.com/maps/embed/v1/directions?key=AIzaSyBmNIvK7VCLkqNtDsQy7oOeuSXiMDZD9-4&origin="+@origin+"&destination="+@destination

  end
end




#raise @distanceapi.inspect
