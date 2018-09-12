# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat1 = Cat.create(name: 'Jerry', color: 'grey', birth_date: '2000/01/23', sex: 'M', description: 'fat and lazy')
cat2 = Cat.create(name: 'Tom', color: 'yellow', birth_date: '2000/01/23', sex: 'M', description: 'ornery')
cat3 = Cat.create(name: 'Lisa', color: 'mixed', birth_date: '2000/01/23', sex: 'F', description: 'loves to cuddle')
