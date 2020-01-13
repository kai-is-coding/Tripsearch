User.destroy_all

puts "Creating users...."

u1 = User.create! name: 'John', email: 'john@ga.co', image: 'https://en.wikipedia.org/wiki/Cat#/media/File:Kittyply_edit1.jpg', bio: 'I love Traveling', password: 'chicken', admin: true

u2 = User.create! name: 'Mikaela', email: 'mikaela@ga.co', image: 'https://en.wikipedia.org/wiki/Cat#/media/File:Felis_silvestris_catus_lying_on_rice_straw.jpg', bio: 'Travel the world!', password: 'chicken', admin: false

u3 = User.create! name: 'Nookie', email: 'nookie@ga.co', image: 'https://en.wikipedia.org/wiki/Cat#/media/File:Listen,_do_you_want_to_know_a_secret.jpg', bio: 'Enjoy the nature.', password: 'chicken', admin: false

puts "Created #{User.count} users."
