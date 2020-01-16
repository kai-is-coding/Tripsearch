User.destroy_all

puts "Creating users...."

u1 = User.create! name: 'John', email: 'john@ga.co', bio: 'I love Traveling', password: 'chicken', admin: true

u2 = User.create! name: 'Mikaela', email: 'mikaela@ga.co', bio: 'Travel the world!', password: 'chicken', admin: false

u3 = User.create! name: 'Nookie', email: 'nookie@ga.co', bio: 'Enjoy the nature.', password: 'chicken', admin: false

puts "Created #{User.count} users."


Wishlist.destroy_all

puts "Creating Wishlist..."

w1 = Wishlist.create! name: 'Wishlist1', user_id: u1.id
w2 = Wishlist.create! name: 'Wishlist2', user_id: u2.id
w3 = Wishlist.create! name: 'Wishlist3', user_id: u3.id

# User -> Wishlist associations
# u1.wishlist << w1
# u2.wishlist << w2
# u3.wishlist << w3

puts "Created #{Wishlist.count} wishlists."


Country.destroy_all

puts 'Creating countries..'
c1 = Country.create! name: 'Switzerland', description: 'Each year it has made the rankings, Switzerland has ranked among the top countries in categories such as “citizenship’” and “entrepreneurship,” says McPhillips. “Respondents consider Switzerland the top country in terms of economic stability, access to capital, a strong legal framework and prestige.”', address: 'Switzerland', latitude:  46.818188, longitude: 8.227512
c2 = Country.create! name: 'Japan', description: 'Japan rose from the fifth spot on last year’s list to the second spot on 2019′s ranking. According to the U.S. News & World Report’s survey results, the country is seen by respondents as one of the most forward looking countries. It also ranks first for entrepreneurship, according to this year’s data.', address: 'Japan', latitude: 36.204824, longitude: 138.252924
c3 = Country.create! name: 'Canada', description: 'Germany, one of the top five overall countries, also broke the top five spots on specialized lists for education, entrepreneurship, power and influence.', address: 'Canada', latitude:  56.130366, longitude: -106.346771
c4 = Country.create! name: 'Australia', description: '', address: 'Australia', latitude:  -25.274398, longitude: 133.775136
c5 = Country.create! name: 'Austria', description: '', address: 'Austria', latitude: 47.516231, longitude: 14.550072
c6 = Country.create! name: 'United Kingdom', description: '', address: 'United Kingdom', latitude: 55.378051, longitude: 3.435973
c7 = Country.create! name: 'United States', description: '', address: 'United States', latitude: 37.09024, longitude: 95.712891
c8 = Country.create! name: 'China', description: '', address: 'China', latitude: 35.86166, longitude: 104.195397
c9 = Country.create! name: 'New Zealand', description: '', address: 'New Zealand', latitude:  -40.900557, longitude: 174.885971
c10 = Country.create! name: ' Norway', description: '', address: ' Norway', latitude: 60.472024, longitude: 8.468946


puts "Created #{Country.count} countries."



City.destroy_all

puts 'Creating cities...'

ct1 = City.create! name: 'Zürich', description: 'Zürich or Zurich (see below for pronunciation) is the largest city in Switzerland and the capital of the canton of Zürich. It is located in north-central Switzerland[4] at the northwestern tip of Lake Zürich. The municipality has approximately 430,000 inhabitants, the urban area (agglomeration) 1.315 million[5] and the Zürich metropolitan area 1.83 million.[6] Zürich is a hub for railways, roads, and air traffic. Both Zurich Airport and railway station are the largest and busiest in the country.', address: 'Zürich, Switzerland', latitude:  47.376887, longitude: 8.541694
ct2 = City.create! name: 'Geneva', description: 'Geneva (/dʒɪˈniːvə/ jin-EE-və;[4] French: Genève [ʒənɛv] (About this soundlisten); Arpitan: Genèva [dzəˈnɛva] (About this soundlisten); German: Genf [ɡɛnf] (About this soundlisten); Italian: Ginevra [dʒiˈneːvra]; Romansh: Genevra) is the second-most populous city in Switzerland (after Zürich) and the most populous city of Romandy, the French-speaking part of Switzerland. Situated where the Rhône exits Lake Geneva, it is the capital of the Republic and Canton of Geneva.', address: 'Geneva, Switzerland', latitude: 46.204391, longitude: 6.143158
ct3 = City.create! name: 'Tokyo City', description: 'Tokyo City (東京市, Tōkyō-shi) was a municipality in Japan and part of Tokyo-fu which existed from 1 May 1889 until its merger with its prefecture on 1 July 1943.[1] The historical boundaries of Tokyo City are now occupied by the 23 Special Wards of Tokyo. The new merged government became what is now Tokyo, also known as the Tokyo Metropolis, or, ambiguously, Tokyo Prefecture.', address: 'Tokyo, Japan', latitude: 35.6804, longitude: 139.769017
ct4 = City.create! name: 'Osaka', description: 'Osaka (Japanese: 大阪市, Hepburn: Ōsaka-shi, pronounced [oːsakaɕi]; commonly just 大阪, Ōsaka [oːsaka] (About this soundlisten)) is a designated city in the Kansai region of Japan. It is the capital city of Osaka Prefecture and the largest component of the Keihanshin Metropolitan Area, the second largest metropolitan area in Japan and among the largest in the world with more than 20 million inhabitants.', address: 'Osaka, Japan', latitude: 34.693725, longitude: 135.502254
ct5 = City.create! name: 'Toronto', description: 'The most populated city in Canada is Toronto. It is home to 5,429,524 people. Toronto is the capital of Ontario and located in the east-central region of the country. Nearly half of the population is made up of foreign-born residents. After Miami in the US, this is the second largest percentage of foreign-born residents in the world. Interestingly, no nationality holds the dominant position, making Toronto the most diverse city in the world.', address: ' Toronto, ON, Canada', latitude: 43.653226, longitude: -79.383184
ct6 = City.create! name: 'Montreal', description: 'The second most populated city in Canada is Montreal. Residents of this city total 3,519,595. Montreal is located in Quebec and French is its official language. The city is an important center for commerce, finance, aerospace, and the pharmaceutical industry.', address: 'Montreal, QC, Canada', latitude: 45.501689, longitude: -73.567256
ct7 = City.create! name: 'Washington', description: '', address: 'Washington, USA', latitude: 47.751074, longitude: -120.740138
ct8 = City.create! name: 'New York', description: '', address: 'New York, NY, USA', latitude: 40.712775, longitude: -74.005973
ct9 = City.create! name: 'Beijing', description: '', address: 'Beijing, China', latitude:  39.9042, longitude: 116.407396
ct10 = City.create! name: 'Shanghai', description: '', address: ' Shanghai, China', latitude: 31.230416, longitude: 121.473701
ct11 = City.create! name: 'Auckland', description: '', address: 'Auckland, New Zealand', latitude:  -36.84846, longitude: 174.763332
ct12 = City.create! name: 'Christchurch', description: '', address: 'Christchurch, New Zealand', latitude: -43.532054, longitude: 172.636225
ct13 = City.create! name: 'Oslo', description: '', address: 'Oslo, Norway', latitude: 59.913869, longitude: 10.752245
ct14 = City.create! name: 'Bergen', description: '', address: 'Bergen, Norway', latitude: 60.391263, longitude: 5.322054
ct15 = City.create! name: 'London', description: '', address: 'London, UK', latitude: 51.507351,longitude:-0.127758
ct16 = City.create! name: 'Liverpool', description: '', address: 'Liverpool, UK', latitude:  53.408371,longitude: -2.991573
ct17 = City.create! name: 'Vienna', description: '', address: 'Vienna, Austria', latitude:  48.208174,longitude: 16.373819
ct18 = City.create! name: 'Graz', description: '', address: 'Graz, Austria', latitude: 47.070714,longitude: 15.439504
ct19 = City.create! name: 'Sydney', description: '', address: 'Sydney NSW, Australia', latitude: -33.86882,longitude:151.209296
ct20 = City.create! name: 'Melbourne', description: '', address: 'Melbourne VIC, Australia', latitude: -37.813628,longitude:144.963058




puts "Created #{City.count} cities."


# Country -> Cities associations
c1.cities << ct1 << ct2
c2.cities << ct3 << ct4
c3.cities << ct5 << ct6
c4.cities << ct19 << ct20
c5.cities << ct17 << ct18
c6.cities << ct15 << ct16
c7.cities << ct8 << ct9
c8.cities << ct9 << ct10
c9.cities << ct11 << ct12
c10.cities << ct13 << ct14

Attraction.destroy_all

puts "Creating Attractions..."

a1 = Attraction.create! name: 'Grossmünster', description: 'The Grossmünster, also spelled Großmünster, is a Romanesque-style Protestant church in Zürich, Switzerland. It is one of the four major churches in the city. Its congregation forms part of the Evangelical Reformed Church of the Canton of Zürich.', address: 'Grossmünsterplatz, 8001 Zürich, Switzerland', latitude:47.370093, longitude:8.544054
a2 = Attraction.create! name: 'Fraumünster Church', description: 'The Fraumünster is a church in Zürich which was built on the remains of a former abbey for aristocratic women which was founded in 853 by Louis the German for his daughter Hildegard.', address:'Münsterhof 2, 8001 Zürich, Switzerland', latitude: 47.369726, longitude: 8.541363
a3 = Attraction.create! name: 'The Geneva Water Fountain', description: 'The Jet dEau is a large fountain in Geneva, Switzerland, and is one of the citys most famous landmarks, being featured on the citys official tourism web site and on the official logo for Genevas hosting of the 2008 UEFA Championships.',address: ' The Geneva Water Fountain, Quai Gustave-Ador, 1207 Genève, Switzerland',latitude:  46.207389, longitude: 6.155903
a4 = Attraction.create! name: 'St Pierre Cathedral', description: 'St. Pierre Cathedral cathedral in Geneva, Switzerland, was built as a Roman Catholic cathedral, but became a Reformed Protestant Church of Geneva church during the Reformation. It is known as the adopted home church of John Calvin, one of the leaders of the Protestant Reformation.',address: 'Place du Bourg-de-Four 24, 1204 Genève, Switzerland',latitude: 46.201127, longitude: 6.148516
a5 = Attraction.create! name: 'The Imperial Palace', description: 'The chief attraction of Tokyos Marunouchi district is the Imperial Palace with its beautiful 17th-century parks surrounded by walls and moats.',address: 'The East Gardens of the Imperial Palace, 1-1 Chiyoda, Chiyoda City, Tōkyō-to 100-8111, Japan', latitude: 35.686873,longitude: 139.757166
a6 = Attraction.create! name: 'National Museum of Nature and Science', description: 'Located in Tokyos Ueno Park, the superb National Museum of Nature and Science (Kokuritsu Kagaku Hakubutsukan) opened in 1871 and is one of the countrys oldest museums. Now completely renovated and modernized, the museum houses a vast collection of materials related to natural history and science, including many fascinating interactive displays on space development, nuclear energy, and transportation, allowing visitors a unique insight into the latest scientific and technological advances.',address: ' 7-20 Uenokōen, Taito City, Tōkyō-to 110-8718, Japan',latitude: 35.716306, longitude:139.776525
a7 = Attraction.create! name: 'Osaka Castle', description: 'Osaka Castle is a Japanese castle in Chūō-ku, Osaka, Japan. The castle is one of Japans most famous landmarks and it played a major role in the unification of Japan during the sixteenth century of the Azuchi-Momoyama period.', address: '1-1 Ōsakajō, Chūō-ku, Osaka, 540-0002, Japan', latitude: 34.687333, longitude: 135.525956
a8 = Attraction.create! name: 'Universal Studios Japan', description: 'Universal Studios Japan, located in Osaka, is one of six Universal Studios theme parks, owned and operated by USJ Co., Ltd., which is wholly owned by NBCUniversal.', address: '2-chōme-1-33 Sakurajima, Konohana-ku, Osaka, 554-0031, Japan', latitude: 34.665442, longitude: 135.432338
a9 = Attraction.create! name: 'CN Tower', description: 'The CN Tower is a 553.3 m-high concrete communications and observation tower located in Downtown Toronto, Ontario, Canada. Built on the former Railway Lands, it was completed in 1976. Its name "CN" originally referred to Canadian National, the railway company that built the tower.', address: '290 Bremner Blvd, Toronto, ON M5V 3L9, Canada', latitude: 43.642566, longitude: -79.387057
a10 = Attraction.create! name: 'Casa Loma', description: 'Casa Loma is a Gothic Revival style mansion and garden in midtown Toronto, Ontario, Canada, that is now a historic house museum and landmark. It was constructed from 1911 to 1914 as a residence for financier Sir Henry Pellatt. The architect was E. J. Lennox, who designed several other city landmarks.', address: '1 Austin Terrace, Toronto, ON M5R 1X8, Canada',latitude: 43.678037, longitude: -79.409444
a11 = Attraction.create! name: 'Mount Royal', description: 'Mount Royal is a large volcanic-related hill or small mountain in the city of Montreal, immediately west of Downtown Montreal, Quebec, Canada. The City of Montreal takes its name from Mount Royal. The hill is part of the Monteregian Hills situated between the Laurentians and the Appalachian Mountains.', address: 'Mount Royal, Montreal, QC H2W 1S8, Canada', latitude: 45.507102 , longitude: -73.587407
a12 = Attraction.create! name: 'Notre-Dame Basilica of Montreal', description: 'Notre-Dame Basilica is a basilica in the historic district of Old Montreal, in Montreal, Quebec, Canada. The church is located at 110 Notre-Dame Street West, at the corner of Saint Sulpice Street. It is located next to the Saint-Sulpice Seminary and faces the Place dArmes square.', address: '110 Rue Notre-Dame Ouest, Montréal, QC H2Y 2V5, Canada', latitude: 45.504525, longitude: -73.55612

# City -> Attraction associations
ct1.attractions << a1 << a2
ct2.attractions << a3 << a4
ct3.attractions << a5 << a6
ct4.attractions << a7 << a8
ct5.attractions << a9 << a10
ct6.attractions << a11 << a12

Image.destroy_all

puts "Creating images..."
i1 = Image.create! name: 'Fraumünster Church', image: 'https://media.gettyimages.com/photos/fraumunster-church-in-zurich-picture-id997499256', attraction_id: a2.id
i2 = Image.create! name: 'Fraumünster Church', image: 'https://st2.depositphotos.com/3049830/11973/i/950/depositphotos_119735432-stock-photo-fraumunster-church-and-limmat-river.jpg', attraction_id: a2.id
i3 = Image.create! name: 'Grossmünster', image: 'https://media.gettyimages.com/photos/grossmunster-cathedral-zurich-picture-id629863809?s=2048x2048', attraction_id: a1.id
i4 = Image.create! name: 'Grossmünster', image: 'https://media.gettyimages.com/photos/beautiful-view-of-grossmnster-church-from-across-the-limmat-river-in-picture-id936336820?k=6&m=936336820&s=612x612&w=0&h=O4hmtW3KSgGfzePF7CyofHe45yw0BQJN4WAnj4snPbQ=', attraction_id: a1.id
i5 = Image.create! name: 'The Geneva Water Fountain', image: 'https://media.gettyimages.com/photos/lake-geneva-from-above-geneva-switzerland-picture-id656399578?s=2048x2048', attraction_id: a3.id
i6 = Image.create! name: 'The Geneva Water Fountain', image: 'https://media.gettyimages.com/photos/aerial-view-of-geneva-city-at-sunset-picture-id1056784936?k=6&m=1056784936&s=612x612&w=0&h=gj6Y9Hc5jd8xVAXYddRxr05OhdMe94Vk5EVJEr3TVB4=', attraction_id: a3.id
i7 = Image.create! name: 'St Pierre Cathedral', image: 'https://media.gettyimages.com/photos/st-pierre-cathedral-geneva-picture-id170618690?s=2048x2048', attraction_id: a4.id
i8 = Image.create! name: 'St Pierre Cathedral', image: 'https://media.gettyimages.com/photos/rennes-cathedral-france-picture-id641628048?k=6&m=641628048&s=612x612&w=0&h=uryYOFverghsOYXhgAbyhhsshfGIy5sNRjApedlMTeE=', attraction_id: a4.id
i9 = Image.create! name: 'The Imperial Palace', image: 'https://media.gettyimages.com/photos/elegant-watchtower-picture-id543202862?k=6&m=543202862&s=612x612&w=0&h=rnOj6c6r_mPf9935NXwn9TJaJCwsZsxNLNLt-VUA-Ug=', attraction_id: a5.id
i10 = Image.create! name: 'The Imperial Palace', image: 'https://media.gettyimages.com/photos/japanese-imperial-architecture-tokyo-japan-picture-id504905234?k=6&m=504905234&s=612x612&w=0&h=XuwLb1g5OHwsodC2MlwpAA4nsJ3x2M5kHJ2IOpkdUkE=', attraction_id: a5.id
i11 = Image.create! name: 'National Museum of Nature and Science', image: 'https://media.gettyimages.com/photos/the-national-museum-of-nature-and-science-in-ueno-park-exhibits-and-picture-id498158252?s=2048x2048', attraction_id: a6.id
i12 = Image.create! name: 'National Museum of Nature and Science', image: 'https://media.gettyimages.com/photos/parent-and-child-of-mapusaurus-roseae-are-displayed-during-the-of-picture-id85410754?k=6&m=85410754&s=612x612&w=0&h=odrei5HLHNjQoYWJS7CVoM2LnWEg3EM1RgNOwZFXKUA=', attraction_id: a6.id
i13 = Image.create! name: 'Osaka Castle', image: 'https://media.gettyimages.com/photos/in-this-aerial-image-osaka-castle-where-hosts-events-of-the-g20-is-picture-id1158506158?k=6&m=1158506158&s=612x612&w=0&h=MN44aXbwWh9sFxLnbR0dO7MlOaArreh-4z61bqBc32M=', attraction_id: a7.id
i14 = Image.create! name: 'Osaka Castle', image: 'https://media.gettyimages.com/photos/view-of-osaka-castle-on-december-10-2016-in-osaka-japan-picture-id628851394?k=6&m=628851394&s=612x612&w=0&h=82m9WJc9VhsztfnjLiT_Ug9e2I_6duydGLdpqxBFzgg=', attraction_id: a7.id
i15 = Image.create! name: 'Universal Studios Japan', image: 'https://media.gettyimages.com/photos/model-of-the-universal-studios-logo-is-displayed-at-the-entrance-to-picture-id453499510?s=2048x2048', attraction_id: a8.id
i16 = Image.create! name: 'Universal Studios Japan', image: 'https://media.gettyimages.com/photos/visitors-walk-in-front-of-the-wizarding-world-of-harry-potter-themed-picture-id453499472?k=6&m=453499472&s=612x612&w=0&h=piT2C6Qosn2DnexjGywxhEdvx56-Re7wsIzIWKLI4O0=', attraction_id: a8.id
i17 = Image.create! name: 'CN Tower', image: 'https://media.gettyimages.com/photos/yachting-on-lake-ontario-in-toronto-ontario-canada-with-the-cn-tower-picture-id513696613?s=2048x2048', attraction_id: a9.id
i18 = Image.create! name: 'CN Tower', image: 'https://media.gettyimages.com/photos/tower-seen-at-twilight-with-a-bright-full-moon-in-the-sky-picture-id478245950?k=6&m=478245950&s=612x612&w=0&h=nEKr8j1fsDqyAsUvTTMhK7f4__BDdfbRtY3i9T1QRyI=', attraction_id: a9.id
i19 = Image.create! name: 'Casa Loma', image: 'https://media.gettyimages.com/photos/the-casa-loma-a-gothic-revival-house-in-toronto-ontario-canada-circa-picture-id159337490?s=2048x2048', attraction_id: a10.id
i20 = Image.create! name: 'Casa Loma', image: 'https://media.gettyimages.com/photos/the-casa-loma-a-gothic-revival-house-in-toronto-ontario-canada-1967-picture-id513696611?s=2048x2048', attraction_id: a10.id
i21 = Image.create! name: 'Mount Royal', image: 'https://media.gettyimages.com/photos/montral-qubec-canada-january-4-2016-childrens-are-playing-in-hte-snow-picture-id543793048?s=2048x2048', attraction_id: a11.id
i22 = Image.create! name: 'Mount Royal', image: 'https://media.gettyimages.com/photos/montral-qubec-canada-january-4-2016-montreal-is-seen-from-mount-royal-picture-id543793072?s=2048x2048', attraction_id: a11.id
i23 = Image.create! name: 'Notre-Dame Basilica of Montreal', image: 'https://media.gettyimages.com/photos/notredame-basilica-church-skylights-in-the-ceiling-the-multicolour-picture-id825856882?s=2048x2048', attraction_id: a12.id
i24 = Image.create! name: 'Notre-Dame Basilica of Montreal', image: 'https://media.gettyimages.com/photos/framed-by-eleborate-sanctuary-church-goers-attend-a-service-in-notre-picture-id152461368?s=2048x2048', attraction_id: a12.id
i25 = Image.create! name: 'Geneva', image: 'https://t4.ftcdn.net/jpg/01/69/35/49/240_F_169354926_Co6lflkuyQtaL6CiMc45X9b9rH67GQfJ.jpg', city_id: ct2.id
i26 = Image.create! name: 'Geneva', image: 'https://t3.ftcdn.net/jpg/01/75/45/32/240_F_175453299_gzD3co2XMQddr1qeGlI7Eoj80mV3ACMg.jpg', city_id: ct2.id
i27 = Image.create! name: 'Tokyo City', image: 'https://images.pexels.com/photos/2506923/pexels-photo-2506923.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct3.id
i28 = Image.create! name: 'Tokyo City', image: 'https://images.pexels.com/photos/2614818/pexels-photo-2614818.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct3.id
i29 = Image.create! name: 'Osaka', image: 'https://images.pexels.com/photos/1440476/pexels-photo-1440476.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct4.id
i30 = Image.create! name: 'Osaka', image: 'https://images.pexels.com/photos/1798631/pexels-photo-1798631.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct4.id
i31 = Image.create! name: 'Toronto', image: 'https://images.pexels.com/photos/373912/pexels-photo-373912.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct5.id
i32 = Image.create! name: 'Toronto', image: 'https://images.pexels.com/photos/1750754/pexels-photo-1750754.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct5.id
i33 = Image.create! name: 'Montreal', image: 'https://images.pexels.com/photos/2889701/pexels-photo-2889701.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct6.id
i34 = Image.create! name: 'Montreal', image: 'https://images.pexels.com/photos/1159708/pexels-photo-1159708.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct6.id
i35 = Image.create! name: 'Zürich', image: 'https://as1.ftcdn.net/jpg/01/85/10/72/500_F_185107235_1myJcez1PSCquoSHUkHpsIa8KjM5QFuI.jpg', city_id: ct1.id
i36 = Image.create! name: 'Zürich', image: 'https://as1.ftcdn.net/jpg/02/18/59/06/500_F_218590606_tYNxh3BM1bL02D196jGHOq2j8N0Pt0Vd.jpg', city_id: ct1.id
i37 = Image.create! name: 'Switzerland', image: 'https://images.pexels.com/photos/922978/pexels-photo-922978.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', country_id: c1.id
i38 = Image.create! name: 'Switzerland', image: 'https://images.pexels.com/photos/1586298/pexels-photo-1586298.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', country_id: c1.id
i39 = Image.create! name: 'Japan', image: 'https://images.pexels.com/photos/402028/pexels-photo-402028.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', country_id: c2.id
i40 = Image.create! name: 'Japan', image: 'https://images.pexels.com/photos/46253/mt-fuji-sea-of-clouds-sunrise-46253.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', country_id: c2.id
i41 = Image.create! name: 'Canada', image: 'https://images.pexels.com/photos/756790/pexels-photo-756790.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', country_id: c3.id
i42 = Image.create! name: 'Canada', image: 'https://images.pexels.com/photos/158398/niagara-falls-waterfall-horseshoe-158398.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', country_id: c3.id
i43 = Image.create! name: 'Josh', image: 'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', user_id: u1.id
i44 = Image.create! name: 'Mikaela', image: 'https://images.pexels.com/photos/730896/pexels-photo-730896.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', user_id: u2.id
i44 = Image.create! name: 'Nookie', image: 'https://images.pexels.com/photos/1741205/pexels-photo-1741205.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', user_id: u3.id
i45 = Image.create! name: 'Australia', image: 'https://images.pexels.com/photos/2607830/pexels-photo-2607830.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', country_id: c4.id
i46 = Image.create! name: 'Austria', image: 'https://images.pexels.com/photos/2032332/pexels-photo-2032332.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', country_id: c5.id
i47 = Image.create! name: 'United Kingdom', image: 'https://images.pexels.com/photos/1128558/pexels-photo-1128558.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', country_id: c6.id
i48 = Image.create! name: 'United States', image: 'https://images.pexels.com/photos/208745/pexels-photo-208745.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', country_id: c7.id
i49 = Image.create! name: 'China', image: 'https://images.pexels.com/photos/1423580/pexels-photo-1423580.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', country_id: c8.id
i50 = Image.create! name: 'New Zealand', image: 'https://images.pexels.com/photos/2259917/pexels-photo-2259917.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', country_id: c9.id
i51 = Image.create! name: 'Norway', image: 'https://images.pexels.com/photos/1562058/pexels-photo-1562058.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', country_id: c10.id
i52 = Image.create! name: 'Washington', image: 'https://images.pexels.com/photos/129112/pexels-photo-129112.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct7.id
i53 = Image.create! name: 'New York', image: 'https://images.pexels.com/photos/356844/pexels-photo-356844.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct8.id
i54 = Image.create! name: 'Beijing', image: 'https://images.pexels.com/photos/2304791/pexels-photo-2304791.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct9.id
i55 = Image.create! name: 'Shanghai', image: 'https://images.pexels.com/photos/683419/pexels-photo-683419.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct10.id
i56 = Image.create! name: 'Auckland', image: 'https://images.pexels.com/photos/1748531/pexels-photo-1748531.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct11.id
i57 = Image.create! name: 'Christchurch', image: 'https://images.pexels.com/photos/937781/pexels-photo-937781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct12.id
i58 = Image.create! name: 'Oslo', image: 'https://images.pexels.com/photos/1559825/pexels-photo-1559825.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct13.id
i59 = Image.create! name: 'Bergen', image: 'https://images.pexels.com/photos/1940038/pexels-photo-1940038.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct14.id
i60 = Image.create! name: 'London', image: 'https://images.pexels.com/photos/460672/pexels-photo-460672.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct15.id
i61 = Image.create! name: 'Liverpool', image: 'https://images.pexels.com/photos/1837590/pexels-photo-1837590.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct16.id
i62 = Image.create! name: 'Vienna', image: 'https://images.pexels.com/photos/910396/pexels-photo-910396.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct17.id
i63 = Image.create! name: 'Graz', image: 'https://images.pexels.com/photos/2397304/pexels-photo-2397304.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct18.id
i64 = Image.create! name: 'Sydney', image: 'https://images.pexels.com/photos/1878293/pexels-photo-1878293.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct19.id
i65 = Image.create! name: 'Melbourne', image: 'https://images.pexels.com/photos/1656584/pexels-photo-1656584.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', city_id: ct20.id

puts "Created #{Image.count} images."
