User.create!(username: 'Guest', email: 'guest@example.com', password: 'password', password_confirmation: 'password')

4.times do |i|
  List.create!(title: "List #{i + 1}", user_id: 1)
end

10.times do |i|
  Item.create!(
    title: "Item #{i + 1}",
    list_id: [ 1, 2, 3 ].sample,
    user_id: 1,
    description: Randamu::Text.phrase,
    completed: [ true, false ].sample,
    date: Date.today,
    priority: [ 'minimal', 'normal', 'critical' ].sample
    )
end
