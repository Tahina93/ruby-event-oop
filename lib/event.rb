require "pry"
require "time"


class Event
  
  attr_accessor :start_date, :duration, :title, :attendees


  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees
  end


  def postpone_24h(start_date)
  	@start_date = start_date + 86400
  end

  def end_date
  	end_date = @start_date + (@duration * 60)
  	return end_date
  end

  def is_past?
    Time.now > @start_date
  end

  def is_future?
  	Time.now < @start_date
  end

  def is_soon?
  	Time.now = @start_date + 1800
  end

  def to_s
  	puts ">Titre : #{@title}" 
  	puts ">Date de début : #{@start_date}"
    puts ">Durée : #{@duration} minutes"
  	puts ">Invités : #{@attendees}"
  end
end

Event