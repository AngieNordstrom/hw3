class EntriesController < ApplicationController
  def new
    @place = Place.find(params["place_id"])
    @entry = Entry.new
  end

  def create
    @entry = Entry.new
    @entry["place_id"] = params["place_id"]
    @entry["title"] = params["entry"]["title"]
    @entry["description"] = params["entry"]["desciption"]
    @entry["posted_on"] = params["entry"]["posted_on"]
    @entry.save
    redirect_to "/places/#{params["place_id"]}"
  end
end
