Before '@geral' do
    
@nome = Faker::Address.street_name
@sobrenome = Faker::Address.street_address
@data_na = Faker::Base.numerify("1#/0#/19##")
@email = Faker::Internet.email('Onoosso_teste')
@senha = "123456"

    end