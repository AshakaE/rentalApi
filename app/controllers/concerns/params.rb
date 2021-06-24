module Params
  def other_params(cas)
    cas.each do |u|
      car = Car.find(u.carId)
      user = User.find(u.userId)
      u.year = car.year
      u.carName = car.name
      u.imageUrl = car.imageUrl
      u.carModel = car.model
      u.createdBy = user.name
      u.userName = user.name
    end
  end
end
