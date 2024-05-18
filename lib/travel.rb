require'./services/open_ai_service'

class Travel
  def with_dates(start_date,end_date)
    @start_date = start_date
    @end_date = end_date
  end 

  def from(origin)
    @origin = origin
  end 

  def to(destination)
    @destination = destination
  end 

  def plan
    travel_itinerary
  end

  private
  def travel_itinerary
    prompt = Utils::Prompt.itinerary_text(@destination, @start_date, @end_date)
    OpenAiService.new.call(prompt)
  end

  def weather
  end

  def violence_info
  end

  def best_way
  end
end