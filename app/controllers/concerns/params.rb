module Params
  def other_params(cas)
    cas.each do |u|
      u.car_name = Car.find(u.car_id).name
      u.image_url = Car.find(u.car_id).image_url
      u.car_model = Car.find(u.car_id).model
      u.user_name = User.find(u.user_id).name
    end
  end
end