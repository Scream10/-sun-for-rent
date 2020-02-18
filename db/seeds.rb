puts "Cleaning database..."
Terrace.destroy_all

puts "Creating terraces..."
terraces_attributes = [
  {
    name:         'Sunny terrace in Bordeaux',
    description:  ,
    address:      ,
    status:       ,
    user_id:
  },
  {
    name:         'Beautiful and trendy baclony',
    description:  ,
    address:      ,
    status:       ,
    user_id:
  },
  {
    name:         'Sweet and large terrace',
    description:  ,
    address:      ,
    status:       ,
    user_id:
  },
  {
    name:         'Nice terrace with an hamac',
    description:  ,
    address:      ,
    status:       ,
    user_id:
  },
  {
    name:         'Sunny terrace in Bordeaux',
    description:  ,
    address:      ,
    status:       ,
    user_id:
  }
]


Terrace.create!(terraces_attributes)
puts "Finish ! Happy coding 😊"
