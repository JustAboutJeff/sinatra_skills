require 'faker'

# create a few users
User.create :name => 'Dev Bootcamp Student', :email => 'me@example.com', :password => 'password'
(3..9).to_a.sample.times do
  User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password => 'password'
end

# create a few technical skills
computer_skills = %w(Ruby Sinatra Rails JavaScript jQuery HTML CSS)
computer_skills.each do |skill|
  Skill.create :name => skill, :context => 'technical'
end

# create a few creative skills
design_skills = %w(Photoshop Illustrator Responsive-Design)
design_skills.each do |skill|
  Skill.create :name => skill, :context => 'creative'
end

# TODO: create associations between users and skills

User.all.each do |user|
  (1..3).to_a.sample.times do
    user.proficiencies.create(:skill => Skill.all.sample, :formal => false, :experience => 0)
  end
end
