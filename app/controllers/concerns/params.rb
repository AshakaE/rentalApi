module Params
  def other_params(cas)
    cas.each do |u|
      u.year = Car.find(u.carId).year
      u.carName = Car.find(u.carId).name
      u.imageUrl = Car.find(u.carId).imageUrl
      u.carModel = Car.find(u.carId).model
      u.userName = User.find(u.userId).name
    end
  end
end