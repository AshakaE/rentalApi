# rubocop:disable Layout/LineLength
class BookingSerializer < ActiveModel::Serializer
  attributes :id, :userId, :name, :createdBy, :date, :userName, :carId, :carName, :carModel, :duration, :imageUrl, :price
end
# rubocop:enable Layout/LineLength
