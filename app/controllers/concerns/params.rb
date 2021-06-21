module Params
  def other_params(cas)
    cas.each do |u|
      # u.userId = User.find_by(name: u.createdBy).id
      car = Car.find(u.carId)
      u.year = car.year
      u.carName = car.name
      u.imageUrl = car.imageUrl
      u.carModel = car.model
      u.userName = u.createdBy
      u.userId = User.find_by(name: u.createdBy).id
    end
  end
end