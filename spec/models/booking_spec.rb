require 'rails_helper'

RSpec.describe Booking, type: :model do
  it { should belong_to(:car) }
  it { should beloand_to(:user) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:created_by) }
  it { should validate_presence_of(:duration) }
end
