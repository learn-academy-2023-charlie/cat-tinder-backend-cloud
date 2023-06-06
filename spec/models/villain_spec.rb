require 'rails_helper'

RSpec.describe Villain, type: :model do
  it "should validate name" do
    villain = Villain.create
    expect(villain.errors[:name]).to_not be_empty
  end

  it "should validate age" do
    villain = Villain.create
    expect(villain.errors[:age]).to_not be_empty
  end

  it "should validate hobbies" do
    villain = Villain.create
    expect(villain.errors[:hobbies]).to_not be_empty
  end

  it "should validate power" do
    villain = Villain.create
    expect(villain.errors[:power]).to_not be_empty
  end

  it "should validate about" do
    villain = Villain.create
    expect(villain.errors[:about]).to_not be_empty
  end

  it "should validate evil_scheme" do
    villain = Villain.create
    expect(villain.errors[:evil_scheme]).to_not be_empty
  end

  it "should validate image" do
    villain = Villain.create
    expect(villain.errors[:image]).to_not be_empty
  end

  it "is not valid if about is less than 10 characers" do
    villain = Villain.create
    expect(villain.errors[:about]).to_not be_empty
  end
end
