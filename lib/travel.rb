require'./lib/services/open_ai_service'
require'./lib/utils/prompt_util'
class Travel
  def with_dates(start_date,end_date)
    @start_date = start_date
    @end_date = end_date
    self
  end 

  def from(origin)
    @origin = origin
    self
  end 

  def to(destination)
    @destination = destination
    self
  end 

  def plan!
    weather
  end

  private
  def travel_itinerary
    prompt = Utils::Prompt.itinerary_text(@destination, @start_date, @end_date)
    OpenAiService.new.call(prompt)
  end

  def weather
    prompt = Utils::Prompt.weather_text(@start_date, @destination)
    OpenAiService.new.call(prompt)
  end

  def violence_info
  end

  def best_way
  end
end