require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new }

  it "check presence of a value to the symbol name" do
    expect(user).to validate_presence_of(:name)
  end
end
