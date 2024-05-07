# db/seeds.rb
user = User.new(
  email: 'test@example.com', 
  password: '123456', 
  password_confirmation: '123456',
  nickname: SecureRandom.hex(10) # ランダムなニックネームを生成
)
if user.save
  puts "User saved successfully!"
else
  puts "Failed to save user: #{user.errors.full_messages.join(", ")}"
end