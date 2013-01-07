class CarsController < ApplicationController
  active_scaffold :car do |conf|
    conf.columns = [:VIN, :Details, :Price, :State, :Year, :Manufacturer, :Brand]
    conf.columns[:Manufacturer].form_ui = :select
    conf.columns[:Manufacturer].update_columns = :Brand # enables the "magic"
    conf.columns[:Brand].form_ui = :select

  end
end 
