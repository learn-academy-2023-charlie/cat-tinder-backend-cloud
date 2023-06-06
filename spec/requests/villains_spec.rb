require 'rails_helper'

RSpec.describe "Villains", type: :request do
  describe "GET /index" do
    it "gets a list of villains" do
      Villain.create(
        name: 'Dark Phoenix',
        age: 27,
        hobbies: 'knitting, figuring out life, dealing with trauma by destroying houses (and other structures)',
        power: 'any and every power you can think of',
        about: 'Great gal, love to see it',
        evil_scheme: 'mostly just going with the flow as far as evil-doing',
        image: 'https://image.ofjean.grey'
      )

      get '/villains'

      villain = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(villain.length).to eq 1
    end
  end
end

describe "POST /create" do
  it "creates a villain" do
    villain_params = {
      villain: {
        name: 'Thanos',
        age: 49,
        hobbies: 'Meow Mix, and plenty of sunshine.',
        power: 'decimating the universe',
        about: 'has a snappy sense of style',
        evil_scheme: 'snap away his problems (and yours)',
        image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
      }
    }

    post '/villains', params: villain_params
    expect(response).to have_http_status(200)
    villain = Villain.first
    expect(villain.name).to eq 'Thanos'
  end


# describe "PATCH /update" do
#   it "updates a villain" do
#     villain = Villain.create(
#       name: 'Thanos',
#       age: 49,
#       hobbies: 'Meow Mix, and plenty of sunshine.',
#       power: 'decimating the universe',
#       about: 'has a snappy sense of style',
#       evil_scheme: 'snap away his problems (and yours)',
#       image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
#     )  
#     patch '/villains/1', params: villain_params
#     expect(response).to have_http_status(200)
#     updated_villain = Villain.first
#     expect { updated_villain.villain.update(villain_params(villain)) }.to change( updated_villain.hobbies, :updated_at)
#   end
# end

  it "doesn't create a villain without a name" do
    villain_params = {
      villain: {
        age: 92,
        hobbies: 'Committing robberies. Impersonating other people.',
        power: 'Shapeshifting.',
        about: 'A mutant shapeshifter with the ability to molecularly shift the formation of her biological cells at will to change her appearance and thereby assume the form of other humans and animals.',
        evil_scheme: 'Unknown.',
        image: 'https://www.alexrossart.com/cdn/shop/products/Mystique_1024x1024.jpg?v=1675177841'
    }
  }
  
    post '/villains', params: villain_params
    expect(response.status).to eq 422
    json = JSON.parse(response.body)
    expect(json['name']).to include "can't be blank"
  end

  it "doesn't create a villain without an age" do
    villain_params = {
      villain: {
        name: 'Mystique',
        hobbies: 'Committing robberies. Impersonating other people.',
        power: 'Shapeshifting.',
        about: 'A mutant shapeshifter with the ability to molecularly shift the formation of her biological cells at will to change her appearance and thereby assume the form of other humans and animals.',
        evil_scheme: 'Unknown.',
        image: 'https://www.alexrossart.com/cdn/shop/products/Mystique_1024x1024.jpg?v=1675177841'
    }
  }
  
    post '/villains', params: villain_params
    expect(response.status).to eq 422
    json = JSON.parse(response.body)
    expect(json['name']).to include "can't be blank"
  end

  it "doesn't create a villain without a hobbies" do
    villain_params = {
      villain: {
        name: 'Mystique',
        age: 92,
        power: 'Shapeshifting.',
        about: 'A mutant shapeshifter with the ability to molecularly shift the formation of her biological cells at will to change her appearance and thereby assume the form of other humans and animals.',
        evil_scheme: 'Unknown.',
        image: 'https://www.alexrossart.com/cdn/shop/products/Mystique_1024x1024.jpg?v=1675177841'
    }
  }
  
    post '/villains', params: villain_params
    expect(response.status).to eq 422
    json = JSON.parse(response.body)
    expect(json['name']).to include "can't be blank"
  end

  it "doesn't create a villain without a power" do
    villain_params = {
      villain: {
        name: 'Mystique',
        age: 92,
        hobbies: 'Committing robberies. Impersonating other people.',
        about: 'A mutant shapeshifter with the ability to molecularly shift the formation of her biological cells at will to change her appearance and thereby assume the form of other humans and animals.',
        evil_scheme: 'Unknown.',
        image: 'https://www.alexrossart.com/cdn/shop/products/Mystique_1024x1024.jpg?v=1675177841'
    }
  }
  
    post '/villains', params: villain_params
    expect(response.status).to eq 422
    json = JSON.parse(response.body)
    expect(json['name']).to include "can't be blank"
  end

  it "doesn't create a villain without a about" do
    villain_params = {
      villain: {
        name: 'Mystique',
        age: 92,
        hobbies: 'Committing robberies. Impersonating other people.',
        power: 'Shapeshifting.',
        evil_scheme: 'Unknown.',
        image: 'https://www.alexrossart.com/cdn/shop/products/Mystique_1024x1024.jpg?v=1675177841'
    }
  }
  
    post '/villains', params: villain_params
    expect(response.status).to eq 422
    json = JSON.parse(response.body)
    expect(json['name']).to include "can't be blank"
  end

  it "doesn't create a villain without an evil_scheme" do
    villain_params = {
      villain: {
        name: 'Mystique',
        age: 92,
        hobbies: 'Committing robberies. Impersonating other people.',
        power: 'Shapeshifting.',
        about: 'A mutant shapeshifter with the ability to molecularly shift the formation of her biological cells at will to change her appearance and thereby assume the form of other humans and animals.',
        image: 'https://www.alexrossart.com/cdn/shop/products/Mystique_1024x1024.jpg?v=1675177841'
    }
  }
  
    post '/villains', params: villain_params
    expect(response.status).to eq 422
    json = JSON.parse(response.body)
    expect(json['name']).to include "can't be blank"
  end

  it "doesn't create a villain without a image" do
    villain_params = {
      villain: {
        name: 'Mystique',
        age: 92,
        hobbies: 'Committing robberies. Impersonating other people.',
        power: 'Shapeshifting.',
        about: 'A mutant shapeshifter with the ability to molecularly shift the formation of her biological cells at will to change her appearance and thereby assume the form of other humans and animals.',
        evil_scheme: 'Unknown.',
    }
  }
  
    post '/villains', params: villain_params
    expect(response.status).to eq 422
    json = JSON.parse(response.body)
    expect(json['name']).to include "can't be blank"
  end
end