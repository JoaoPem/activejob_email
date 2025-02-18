10.times do |i|
  User.create!(
    email: "user#{i + 1}@example.com",
    password: '123456'
  )
end
