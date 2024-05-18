module Utils
  class Prompt
    def self.itinerary_text(destination, start_date, end_date)
      "Im traveling to #{destination} on #{start_date} and returning on #{end_date}. Please help me plan my trip."
    end

    def self.weather_text(start_date, destination)
      "Im traveling to #{destination} on #{start_date}. Based on historic events, how is the weather there?"
    end
  end
end