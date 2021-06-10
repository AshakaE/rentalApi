require 'rails_helper'

RSpec.describe Car, type: :model do
  it { should have_many(:bookings).dependent(:destroy) }
  it { should have_many(:users) }

  it { should validate_presence_of(:name) }
end
