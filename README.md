# README

Commented out code:
app/controllers/villains_controller.rb
Update and destroy endpoints not complete
    # villain = Villain.find(params[:id])
    # villain.update(villain_params)

    # if villain.valid?
    #     render json: villain
    # else
    #     render json: villain.errors
    # end

app/spec/requests/villains_spec.rb
Update and destroy endpoints not complete
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


Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
