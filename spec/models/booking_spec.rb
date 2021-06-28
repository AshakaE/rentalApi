require 'rails_helper'

RSpec.describe Booking, type: :model do
  it { should belong_to(:car) }
  it { should belong_to(:user) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:createdBy) }
  it { should validate_presence_of(:duration) }
end
