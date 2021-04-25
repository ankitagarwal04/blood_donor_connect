class LocationSearchController < ApplicationController
  # [Latitude, Longitude]
  # Noida: [28.535517,77.391029]
  # Delhi: [28.704060, 77.102493]
  def compare_distance
    response = {
      success: true,
      data: {}
    }
    response[:data] = {
      unit: 'km',
      compare_distance: Geocoder::Calculations.distance_between([28.535517,77.391029], [28.704060, 77.102493], {units: :km}).round(1)
    }
    render json: response, status: 200
  end
end
