require 'rails_helper'

RSpec.describe Villain, type: :model do
  it "should validate name" do
    villain = Villain.create(
      age: 27,
      hobbies: 'knitting, figuring out life, dealing with trauma by destroying houses (and other structures)',
      power: 'any and every power you can think of',
      about: 'Great gal, love to see it',
      evil_scheme: 'mostly just going with the flow as far as evil-doing',
      image: 'https://image.ofjean.grey'
    )
    expect(villain.errors[:name]).to_not be_empty
  end

  it "should validate age" do
    villain = Villain.create(
      name: 'Dark Phoenix',
      hobbies: 'knitting, figuring out life, dealing with trauma by destroying houses (and other structures)',
      power: 'any and every power you can think of',
      about: 'Great gal, love to see it',
      evil_scheme: 'mostly just going with the flow as far as evil-doing',
      image: 'https://image.ofjean.grey'
    )
    expect(villain.errors[:age]).to_not be_empty
  end

  it "should validate hobbies" do
    villain = Villain.create(
      name: 'Dark Phoenix',
      age: 27,
      power: 'any and every power you can think of',
      about: 'Great gal, love to see it',
      evil_scheme: 'mostly just going with the flow as far as evil-doing',
      image: 'https://image.ofjean.grey'
    )
    expect(villain.errors[:hobbies]).to_not be_empty
  end

  it "should validate power" do
    villain = Villain.create(
      name: 'Dark Phoenix',
      age: 27,
      hobbies: 'knitting, figuring out life, dealing with trauma by destroying houses (and other structures)',
      about: 'Great gal, love to see it',
      evil_scheme: 'mostly just going with the flow as far as evil-doing',
      image: 'https://image.ofjean.grey'
    )
    expect(villain.errors[:power]).to_not be_empty
  end

  it "should validate about" do
    villain = Villain.create(
      name: 'Dark Phoenix',
      age: 27,
      hobbies: 'knitting, figuring out life, dealing with trauma by destroying houses (and other structures)',
      power: 'any and every power you can think of',
      evil_scheme: 'mostly just going with the flow as far as evil-doing',
      image: 'https://image.ofjean.grey'
    )
    expect(villain.errors[:about]).to_not be_empty
  end

  it "should validate evil_scheme" do
    villain = Villain.create(
      name: 'Dark Phoenix',
      age: 27,
      hobbies: 'knitting, figuring out life, dealing with trauma by destroying houses (and other structures)',
      power: 'any and every power you can think of',
      about: 'Great gal, love to see it',
      image: 'https://image.ofjean.grey'
    )
    expect(villain.errors[:evil_scheme]).to_not be_empty
  end

  it "should validate image" do
    villain = Villain.create(
      name: 'Dark Phoenix',
      age: 27,
      hobbies: 'knitting, figuring out life, dealing with trauma by destroying houses (and other structures)',
      power: 'any and every power you can think of',
      about: 'Great gal, love to see it',
      evil_scheme: 'mostly just going with the flow as far as evil-doing',
    )
    expect(villain.errors[:image]).to_not be_empty
  end

  it "is not valid if about is less than 10 characers" do
    villain = Villain.create(
      name: 'Dark Phoenix',
      age: 27,
      hobbies: 'knitting, figuring out life, dealing with trauma by destroying houses (and other structures)',
      power: 'any and every power you can think of',
      about: 'Great gal',
      evil_scheme: 'mostly just going with the flow as far as evil-doing',
      image: 'https://image.ofjean.grey'
    )
    expect(villain.errors[:about]).to_not be_empty
  end
end
