class Trip
  def prepare(preparers)
    preparers.each { |preparer|
    case prepaprer
    when Mechanic
      preparer.prepare_bicycles(bicycle)
    when TripCoordinator
      prepaper.buy_food(customers)
    when Driver
      prepaper.pas_up(vehicle)
      prepaper.fill_water_tank(vehicle)
    }
  end
end