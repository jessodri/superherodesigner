# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

item_types = [
    {
    label: 'capes',
    costume_position: nil
    },
    {
    label: 'lycra',
    costume_position: nil
    },
    {
    label: 'masks',
    costume_position: nil
    },
    {
    label: 'hats',
    costume_position: nil
    },
    {
    label: 'wigs',
    costume_position: nil
    },
    {
    label: 'boots',
    costume_position: nil
    },
    {
    label: 'jackets',
    costume_position: nil
    },
    {
    label: '6 pack',
    costume_position: nil
    },
]

ItemType.create!(item_types) {|item_type| puts "created: #{item_type.label}"}