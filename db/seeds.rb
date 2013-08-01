# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Role.delete_all

[:admin, :manager].each do |role|
	Role.create name:role
end

admin = User.new first_name: 'Вероника', last_name: 'Трунина', email: 'veronika.trunina@gmail.com', password: 'PDRpass1'
admin.roles << Role.find_by_name(:admin)
admin.save

