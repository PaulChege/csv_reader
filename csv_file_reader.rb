require 'csv'

array = CSV.read('MOCK_DATA.csv')

# First row
a = CSV.read('MOCK_DATA.csv', :headers => true).first
person = {
  'id' => a['id'],
  'first_name' => a['first_name'],
  'last_name' => a['last_name'],
  'email' => a['email'],
  'gender' => a['gender'],
  'ip_address' => a['ip_address']
}

puts person

#First 10 rows
persons = Hash.new
CSV.foreach('MOCK_DATA.csv', :headers => true) do |row|
  persons[row['id']] = 
    {
      'id' => row['id'],
      'first_name' => row['first_name'],
      'last_name' => row['last_name'],
      'email' => row['email'],
      'gender' => row['gender'],
      'ip_address' => row['ip_address']
    }
end

puts persons