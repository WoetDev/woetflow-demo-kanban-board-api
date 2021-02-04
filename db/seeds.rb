# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

columns = [
  {
    label: "TO-DO",
    value: "to_do"
  },
  {
    label: "IN PROGRESS",
    value: "in_progress"
  },
  {
    label: "REVIEW",
    value: "review"
  },
  {
    label: "DONE",
    value: "done"
  }
]

users = [
  {
    label: "Steve Jobs",
    value: "https://pickaface.net/gallery/avatar/Opi51c74d0125fd4.png",
  },
  {
    label: "Wally De Backer",
    value: "https://pickaface.net/gallery/avatar/HalcyonicBlues51d76e22316fb.png"
  },
  {
    label: "Indro Warkop",
    value: "https://pickaface.net/gallery/avatar/technostar2651dbbe73a502d.png"
  },
  {
    label: "Vincent Chase",
    value: "https://pickaface.net/gallery/avatar/Opi51c74f6c56e40.png"
  },
  {
    label: "Johnny Drama",
    value: "https://pickaface.net/gallery/avatar/Opi51c74f056fc74.png"
  },
  {
    label: "Johnny Depp",
    value: "https://pickaface.net/gallery/avatar/gs315535348ce076c6.png"
  },
  {
    label: "Bashir Hamdok",
    value: "https://pickaface.net/gallery/avatar/unr_bashir_210120_0314_cvj3.png"
  }
]

columns.each do |column|
  Column.create(label: column[:label], value: column[:value])
end

users.each do |user|
  User.create(label: user[:label], value: user[:value])
end

cards = [
  {
    title: "Add discount code to checkout page",
    date: "2020-12-14",
    tag: "Feature Request",
    column_id: Column.find_by(value: columns.sample[:value])[:id],
    user_id: User.find_by(label: users.sample[:label])[:id]
  },
  {
    title: "Provide documentation on integrations",
    date: "2021-01-12",
    tag: "Backend",
    column_id: Column.find_by(value: columns.sample[:value])[:id],
    user_id: User.find_by(label: users.sample[:label])[:id]
  },
  {
    title: "Design shopping cart dropdown",
    date: "2021-01-09",
    tag: "Design",
    column_id: Column.find_by(value: columns.sample[:value])[:id],
    user_id: User.find_by(label: users.sample[:label])[:id]
  },
  {
    title: "Test checkout flow",
    date: "2021-09-15",
    tag: "QA",
    column_id: Column.find_by(value: columns.sample[:value])[:id],
    user_id: User.find_by(label: users.sample[:label])[:id]
  },
  {
    title: "Design wishlist overview",
    date: "2021-01-09",
    tag: "Design",
    column_id: Column.find_by(value: columns.sample[:value])[:id],
    user_id: User.find_by(label: users.sample[:label])[:id]
  },
  {
    title: "Add paypal as a payment provider",
    date: "2021-01-14",
    column_id: Column.find_by(value: columns.sample[:value])[:id],
    user_id: User.find_by(label: users.sample[:label])[:id]
  },
  {
    title: "Update documentation on products endpoint",
    date: "2021-01-19",
    tag: "Backend",
    column_id: Column.find_by(value: columns.sample[:value])[:id],
    user_id: User.find_by(label: users.sample[:label])[:id]
  },
  {
    title: "Design products carousel",
    date: "2021-01-10",
    tag: "Design",
    column_id: Column.find_by(value: columns.sample[:value])[:id],
    user_id: User.find_by(label: users.sample[:label])[:id]
  },
  {
    title: "Add related products section",
    date: "2021-01-14",
    tag: "Feature Request",
    column_id: Column.find_by(value: columns.sample[:value])[:id],
    user_id: User.find_by(label: users.sample[:label])[:id]
  },
  {
    title: "Design wishlist dropdown",
    date: "2021-01-09",
    tag: "Design",
    column_id: Column.find_by(value: columns.sample[:value])[:id],
    user_id: User.find_by(label: users.sample[:label])[:id]
  },
  {
    title: "Add new properties to products endpoint",
    date: "2021-01-14",
    tag: "Backend",
    column_id: Column.find_by(value: columns.sample[:value])[:id],
    user_id: User.find_by(label: users.sample[:label])[:id]
  },
  {
    title: "Prepare product meeting",
    date: "2021-01-14",
    column_id: Column.find_by(value: columns.sample[:value])[:id],
    user_id: User.find_by(label: users.sample[:label])[:id]
  },
  {
    title: "Design discount code for checkout page",
    date: "2021-01-12",
    tag: "Design",
    column_id: Column.find_by(value: columns.sample[:value])[:id],
    user_id: User.find_by(label: users.sample[:label])[:id]
  }
]

cards.each do |card|
  Card.create(title: card[:title], date: card[:date], tag: card[:tag], column_id: card[:column_id], user_id: card[:user_id])
end

