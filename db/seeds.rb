User.destroy_all

puts "Creating users...."

u1 = User.create! name: 'John', email: 'john@ga.co', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Kittyply_edit1.jpg/1024px-Kittyply_edit1.jpg', bio: 'I love Traveling', password: 'chicken', admin: true

u2 = User.create! name: 'Mikaela', email: 'mikaela@ga.co', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Felis_silvestris_catus_lying_on_rice_straw.jpg/1024px-Felis_silvestris_catus_lying_on_rice_straw.jpg', bio: 'Travel the world!', password: 'chicken', admin: false

u3 = User.create! name: 'Nookie', email: 'nookie@ga.co', image: 'https://upload.wikimedia.org/wikipedia/commons/6/6d/Listen%2C_do_you_want_to_know_a_secret.jpg', bio: 'Enjoy the nature.', password: 'chicken', admin: false

puts "Created #{User.count} users."
