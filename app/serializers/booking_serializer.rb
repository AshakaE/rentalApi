class BookingSerializer < ActiveModel::Serializer
  attributes :id, :userId, :name, :createdBy, :date, :userName, :carId, :carName, :carModel, :duration, :imageUrl, :price
end
