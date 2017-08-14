# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'securerandom'

maths = Category.create(uuid: SecureRandom.uuid, category_name: 'Mathematics', description: 'Books belong to mathematics')
physics = Category.create(uuid: SecureRandom.uuid, category_name: 'Physics', description: 'Books belong to mathematics')
chemistry = Category.create(uuid: SecureRandom.uuid, category_name: 'Chemistry', description: 'Books belong to mathematics')
biology = Category.create(uuid: SecureRandom.uuid, category_name: 'Biology', description: 'Books belong to mathematics')
litrature = Category.create(uuid: SecureRandom.uuid, category_name: 'Litrature', description: 'Books belong to mathematics')
law = Category.create(uuid: SecureRandom.uuid, category_name: 'Law', description: 'Books belong to mathematics')
language = Category.create(uuid: SecureRandom.uuid, category_name: 'Language', description: 'Books belong to mathematics')
economics = Category.create(uuid: SecureRandom.uuid, category_name: 'Economics', description: 'Books belong to mathematics')
accounting = Category.create(uuid: SecureRandom.uuid, category_name: 'Accounting', description: 'Books belong to mathematics')

Book.create(uuid: SecureRandom.uuid, title: 'Advanced Calcules', author: 'Larson', isbn: '124568isb', pages_number: 500, total: 20, category: maths)
Book.create(uuid: SecureRandom.uuid, title: 'Numerical Theory', author: 'Anderson', isbn: '124788isb', pages_number: 600, total: 30, category: maths)
Book.create(uuid: SecureRandom.uuid, title: 'Mechanics', author: 'Larson phy', isbn: '784568isb', pages_number: 300, total: 18, category: physics)
Book.create(uuid: SecureRandom.uuid, title: 'Human Anatomy', author: 'Richard', isbn: '7895468isb', pages_number: 900, total: 40, category: biology)

student = Group.create(uuid: SecureRandom.uuid, group_name: 'Student', description: 'University student')
professor = Group.create(uuid: SecureRandom.uuid, group_name: 'Professor', description: 'University professor')
liberarian = Group.create(uuid: SecureRandom.uuid, group_name: 'Liberarian', description: 'University liberarian')
support = Group.create(uuid: SecureRandom.uuid, group_name: 'Support', description: 'University support')
admin = Group.create(uuid: SecureRandom.uuid, group_name: 'Admin', description: 'System admi')

dejen = Credential.create(uuid: SecureRandom.uuid, username: 'dejen', email: 'dejen@email.com', password: '12345678')
flori = Credential.create(uuid: SecureRandom.uuid, username: 'flori', email: 'flori@email.com', password: '12345678')
addis = Credential.create(uuid: SecureRandom.uuid, username: 'addis', email: 'addis@email.com', password: '12345678')
mhret = Credential.create(uuid: SecureRandom.uuid, username: 'mhret', email: 'mhret@email.com', password: '12345678')
fasil = Credential.create(uuid: SecureRandom.uuid, username: 'fasil', email: 'fasil@email.com', password: '12345678')

dejenU = User.create(uuid: SecureRandom.uuid, first_name: 'Dejen', last_name: 'Sharew', id_card: '12345678', phone: '12345678', address_line_one: '12345678', address_line_two: '12345678', zipcode: '12345678', credential: dejen)
floriU = User.create(uuid: SecureRandom.uuid, first_name: 'Florida', last_name: 'Taye', id_card: '12346578', phone: '22345678', address_line_one: '13345678', address_line_two: '12345678', zipcode: '12345678', credential: flori)
addisU = User.create(uuid: SecureRandom.uuid, first_name: 'Addisu', last_name: 'Hadush', id_card: '12347568', phone: '32345678', address_line_one: '15345678', address_line_two: '12345678', zipcode: '12345678', credential: addis)
mhretU = User.create(uuid: SecureRandom.uuid, first_name: 'Mhret', last_name: 'Berhe', id_card: '12348567', phone: '42345678', address_line_one: '12345678', address_line_two: '12345678', zipcode: '12345678', credential: mhret)
fasilU = User.create(uuid: SecureRandom.uuid, first_name: 'Fasil', last_name: 'Girma', id_card: '12348765', phone: '52345678', address_line_one: '12345678', address_line_two: '12345678', zipcode: '12345678', credential: fasil)

UserGroup.create(user: dejenU, group: student)
UserGroup.create(user: floriU, group: liberarian)
UserGroup.create(user: addisU, group: professor)
UserGroup.create(user: mhretU, group: admin)
UserGroup.create(user: fasilU, group: support)

