User.destroy_all

puts "Creating users...."

u1 = User.create! name: 'John', email: 'john@ga.co', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Kittyply_edit1.jpg/1024px-Kittyply_edit1.jpg', bio: 'I love Traveling', password: 'chicken', admin: true

u2 = User.create! name: 'Mikaela', email: 'mikaela@ga.co', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Felis_silvestris_catus_lying_on_rice_straw.jpg/1024px-Felis_silvestris_catus_lying_on_rice_straw.jpg', bio: 'Travel the world!', password: 'chicken', admin: false

u3 = User.create! name: 'Nookie', email: 'nookie@ga.co', image: 'https://upload.wikimedia.org/wikipedia/commons/6/6d/Listen%2C_do_you_want_to_know_a_secret.jpg', bio: 'Enjoy the nature.', password: 'chicken', admin: false

puts "Created #{User.count} users."


Country.destroy_all

puts 'Creating countries..'
c1 = Country.create! name: 'Switzerland', description: 'Each year it has made the rankings, Switzerland has ranked among the top countries in categories such as “citizenship’” and “entrepreneurship,” says McPhillips. “Respondents consider Switzerland the top country in terms of economic stability, access to capital, a strong legal framework and prestige.”'
c2 = Country.create! name: 'Japan', description: 'Japan rose from the fifth spot on last year’s list to the second spot on 2019′s ranking. According to the U.S. News & World Report’s survey results, the country is seen by respondents as one of the most forward looking countries. It also ranks first for entrepreneurship, according to this year’s data.'
c3 = Country.create! name: 'Canada', description: 'Germany, one of the top five overall countries, also broke the top five spots on specialized lists for education, entrepreneurship, power and influence.'

puts "Created #{Country.count} countries."

City.destroy_all

puts 'Creating cities...'

ct1 = City.create! name: 'Zürich', description: 'Zürich or Zurich (see below for pronunciation) is the largest city in Switzerland and the capital of the canton of Zürich. It is located in north-central Switzerland[4] at the northwestern tip of Lake Zürich. The municipality has approximately 430,000 inhabitants, the urban area (agglomeration) 1.315 million[5] and the Zürich metropolitan area 1.83 million.[6] Zürich is a hub for railways, roads, and air traffic. Both Zurich Airport and railway station are the largest and busiest in the country.'
ct2 = City.create! name: 'Geneva', description: 'Geneva (/dʒɪˈniːvə/ jin-EE-və;[4] French: Genève [ʒənɛv] (About this soundlisten); Arpitan: Genèva [dzəˈnɛva] (About this soundlisten); German: Genf [ɡɛnf] (About this soundlisten); Italian: Ginevra [dʒiˈneːvra]; Romansh: Genevra) is the second-most populous city in Switzerland (after Zürich) and the most populous city of Romandy, the French-speaking part of Switzerland. Situated where the Rhône exits Lake Geneva, it is the capital of the Republic and Canton of Geneva.'
ct3 = City.create! name: 'Tokyo City', description: 'Tokyo City (東京市, Tōkyō-shi) was a municipality in Japan and part of Tokyo-fu which existed from 1 May 1889 until its merger with its prefecture on 1 July 1943.[1] The historical boundaries of Tokyo City are now occupied by the 23 Special Wards of Tokyo. The new merged government became what is now Tokyo, also known as the Tokyo Metropolis, or, ambiguously, Tokyo Prefecture.'
ct4 = City.create! name: 'Osaka', description: 'Osaka (Japanese: 大阪市, Hepburn: Ōsaka-shi, pronounced [oːsakaɕi]; commonly just 大阪, Ōsaka [oːsaka] (About this soundlisten)) is a designated city in the Kansai region of Japan. It is the capital city of Osaka Prefecture and the largest component of the Keihanshin Metropolitan Area, the second largest metropolitan area in Japan and among the largest in the world with more than 20 million inhabitants.'
ct5 = City.create! name: 'Toronto', description: 'The most populated city in Canada is Toronto. It is home to 5,429,524 people. Toronto is the capital of Ontario and located in the east-central region of the country. Nearly half of the population is made up of foreign-born residents. After Miami in the US, this is the second largest percentage of foreign-born residents in the world. Interestingly, no nationality holds the dominant position, making Toronto the most diverse city in the world.'
ct6 = City.create! name: 'Montreal', description: 'The second most populated city in Canada is Montreal. Residents of this city total 3,519,595. Montreal is located in Quebec and French is its official language. The city is an important center for commerce, finance, aerospace, and the pharmaceutical industry.'

# Country -> Cities associations
c1.cities << ct1 << ct2
c2.cities << ct3 << ct4
c3.cities << ct5 << ct6

Attraction.destroy_all

puts "Creating Attractions..."

a1 = Attraction.create! name: 'Grossmünster', description: 'The Grossmünster, also spelled Großmünster, is a Romanesque-style Protestant church in Zürich, Switzerland. It is one of the four major churches in the city. Its congregation forms part of the Evangelical Reformed Church of the Canton of Zürich.'
a2 = Attraction.create! name: 'Fraumünster Church', description: 'The Fraumünster is a church in Zürich which was built on the remains of a former abbey for aristocratic women which was founded in 853 by Louis the German for his daughter Hildegard.'
a3 = Attraction.create! name: 'The Geneva Water Fountain', description: 'The Jet dEau is a large fountain in Geneva, Switzerland, and is one of the citys most famous landmarks, being featured on the citys official tourism web site and on the official logo for Genevas hosting of the 2008 UEFA Championships.'
a4 = Attraction.create! name: 'St Pierre Cathedral', description: 'St. Pierre Cathedral cathedral in Geneva, Switzerland, was built as a Roman Catholic cathedral, but became a Reformed Protestant Church of Geneva church during the Reformation. It is known as the adopted home church of John Calvin, one of the leaders of the Protestant Reformation.'
a5 = Attraction.create! name: 'The Imperial Palace', description: 'The chief attraction of Tokyos Marunouchi district is the Imperial Palace with its beautiful 17th-century parks surrounded by walls and moats.'
a6 = Attraction.create! name: 'National Museum of Nature and Science', description: 'Located in Tokyos Ueno Park, the superb National Museum of Nature and Science (Kokuritsu Kagaku Hakubutsukan) opened in 1871 and is one of the countrys oldest museums. Now completely renovated and modernized, the museum houses a vast collection of materials related to natural history and science, including many fascinating interactive displays on space development, nuclear energy, and transportation, allowing visitors a unique insight into the latest scientific and technological advances.'
a7 = Attraction.create! name: 'Osaka Castle', description: 'Osaka Castle is a Japanese castle in Chūō-ku, Osaka, Japan. The castle is one of Japans most famous landmarks and it played a major role in the unification of Japan during the sixteenth century of the Azuchi-Momoyama period.'
a8 = Attraction.create! name: 'Universal Studios Japan', description: 'Universal Studios Japan, located in Osaka, is one of six Universal Studios theme parks, owned and operated by USJ Co., Ltd., which is wholly owned by NBCUniversal.'
a9 = Attraction.create! name: 'CN Tower', description: 'The CN Tower is a 553.3 m-high concrete communications and observation tower located in Downtown Toronto, Ontario, Canada. Built on the former Railway Lands, it was completed in 1976. Its name "CN" originally referred to Canadian National, the railway company that built the tower.'
a10 = Attraction.create! name: 'Casa Loma', description: 'Casa Loma is a Gothic Revival style mansion and garden in midtown Toronto, Ontario, Canada, that is now a historic house museum and landmark. It was constructed from 1911 to 1914 as a residence for financier Sir Henry Pellatt. The architect was E. J. Lennox, who designed several other city landmarks.'
a11 = Attraction.create! name: 'Mount Royal', description: 'Mount Royal is a large volcanic-related hill or small mountain in the city of Montreal, immediately west of Downtown Montreal, Quebec, Canada. The City of Montreal takes its name from Mount Royal. The hill is part of the Monteregian Hills situated between the Laurentians and the Appalachian Mountains.'
a12 = Attraction.create! name: 'Notre-Dame Basilica of Montreal', description: 'Notre-Dame Basilica is a basilica in the historic district of Old Montreal, in Montreal, Quebec, Canada. The church is located at 110 Notre-Dame Street West, at the corner of Saint Sulpice Street. It is located next to the Saint-Sulpice Seminary and faces the Place dArmes square.'

# City -> Attraction associations
ct1.attractions << a1 << a2
ct2.attractions << a3 << a4
ct3.attractions << a5 << a6
ct4.attractions << a7 << a8
ct5.attractions << a9 << a10
ct6.attractions << a11 << a12
