# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{title:'Hair'},{title: 'Nails'},{title: 'Body'},{title:'Face'},{title:'Brows'},{title:'Wax'},{title:'Makeup'},{title:'Special'}])

Salon.create(name: "Andrew Barton", address: "25 Henrietta Street", postal_code: "WC2E 8NA", city: "London", opening_time: "2000-01-01 10:00:00", closing_time: "2000-01-01 17:00:00", category_ids: [1], description: "Andrew Barton’s flagship Covent Garden salon is characterised by a lively, welcoming vibe and a reputation amongst those in the know as the home to the very best in British hairdressing.", phone: "020 7112 5998", website_url: "http://www.andrewbarton.tv/")

Salon.create(name: "Turquoise", address: "42A Charlotte Street", postal_code: "W1T 2NP", city: "London", opening_time: "2000-01-01 10:00:00", closing_time: "2000-01-01 19:00:00", category_ids: [1], description: "Turquoise Hair & Beauty is salon situated on Charlotte Street in Central London. We provide an array of hair treatments and strive to meet all of our customers needs.", phone: "020 7637 4402", website_url: "http://www.turquoisehairbeauty.co.uk/")

Salon.create(name: "Linda Meredith", address: "36 Beauchamp Place", postal_code: "SW3 1NU", city: "London", opening_time: "2000-01-01 10:00:00", closing_time: "2000-01-01 19:00:00", category_ids: [5, 6], description: "Linda Meredith Knightsbridge is a unique salon on many levels. With over 40 years experience in the Beauty Industry the salon has established a world wide reputation. With more celebrities than any other salon in the world as regular clients we offer tailor made treatments.", phone: "0207 225 2755", website_url: "http://lindameredith.com/")

Salon.create(name: "St Pancras Spa", address: "St. Pancras Renaissance London Hotel, Euston Road", postal_code: "NW1 2AR", city: "London", opening_time: "2000-01-01 09:00:00", closing_time: "2000-01-01 21:00:00", category_ids: [5, 6], description: "A sumptuous, subterranean sanctuary with sauna, steam rooms, spa and Victorian tiled baths, our spa is a haven of tranquility and restoration. 

Rituals from around the world to restore beauty and contentment, accompany us on a Victorian journey of the senses, from St Pancras to Africa, India and the Far East, to discover the world’s finest beauty recipes and remedies. Then indulge in your own transport of delight with one of our blissful spa ‘journeys’, or a combination of rituals designed to meet your own individual needs.", phone: "020 7841 3578", website_url: "http://www.stpancrasspa.co.uk/")

Salon.create(name: "Hula Nails", address: "203-205 Whitecross Street", postal_code: "EC1Y 8QP", city: "London", opening_time: "2000-01-01 10:30:00", closing_time: "2000-01-01 19:30:00", category_ids: [1,2,7,9], description: "Hula’s boudoir style beauty rooms are gloriously decked out in Hawaian wallcoverings, with plush velvet sofas and burlesque flourishes (airbrush tans are dried off with a feathery fan, while beauticians have a distinctly Dita Von Teese air about them). Nail treatments take place in the window of the parlour, so you can gossip as you watch the media types go by", phone: "0207 253 4453", website_url: "www.hulanails.com/")

Salon.create(name: "Aman Spa at The Connaught", address: "The Connaught, Carlos Place", postal_code: "W1K 2AL", city: "London", opening_time: "2000-01-01 09:00:00", closing_time: "2000-01-01 21:00:00", category_ids: [2,4,5,6,7,9], description: "Reflecting both the hotel’s inimitable style and Amanresorts’ Asian-inspired aesthetic, every detail of the Aman Spa is finely tuned to offer guests optimal relaxation and comfort.

  The varied treatments at Aman Spas around the world are tailored to provide guests with an exceptional experience. The core of the Aman Spa’s menu at the Connaught is based on key treatments reflecting the renewing traditions of China, Thailand, India and the Americas.", phone: "20314773056", website_url: "http://www.the-connaught.co.uk/aman-spa/")

Salon.create(name: "MW Nails", address: "111B Commercial Street", postal_code: "E1 6BG", city: "London", opening_time: "2000-01-01 10:00:00", closing_time: "2000-01-01 21:00:00", category_ids: [2], description: "This wonderfully silly themed beautician's is decked out entirely, and authentically, from the salvaged innards of an American Airlines Boeing 747. Brightly lit beauty stations made up of roomy re-upholstered plane seats (think business class rather than Easyjet) accommodate travel themed treatments like the long lasting 'Two Weeks To Tahiti' manicure (£39) or the quick file and polish 'Shanghai Shape' (£9). If you've got something more luxurious in mind, your treatment will take place over in VIP – where you can indulge in a two person pedicure station with an ex-Air France first class seating system.", phone: "020 7247 0288", website_url: "http://www.mwnails.com/")

Salon.create(name: "Strip Wax Bar", address: "112 Talbot Road, Notting Hill", postal_code: "W11 1JR", city: "London", opening_time: "2000-01-01 10:00:00", closing_time: "2000-01-01 21:00:00", category_ids: [6,7], description: "We are London’s number one waxing and lingerie boutique; our amazing waxes will leave your skin feeling incomparably soft and supple – and best of all: without the *ouch*!", phone: "020 7727 2754", website_url: "http://www.stripwaxbar.com")

Salon.create(name: "Blink Brow Bar", address: "Selfridges London Oxford Street", postal_code: "W1A 1AB", city: "London", opening_time: "2000-01-01 10:00:00", closing_time: "2000-01-01 21:00:00", category_ids: [6], description: "Blink’s mission has been and always will be to ‘take the pain out of beauty regimes and leave women looking and feeling fabulous’. Blink certainly touched a desperate need – women loved the quick ‘no fuss’ service and exceptional results. Queues continue to form every day at the Blink Brow Bars and we now shape over a million eyebrows a year.", phone: "020 7318 2462", website_url: "http://www.blinkbrowbar.com/")

# User.create(first_name: "Adrian", last_name: "McLean", role: "user", email: "aa@aa", password: "password", password_confirmation: "password" )
# User.create(first_name: "Dorothy", last_name: "Russell", role: "user", email: "ab@aa", password: "password", password_confirmation: "password" )
# User.create(first_name: "Keith", last_name: "Turner", role: "user", email: "bb@aa", password: "password", password_confirmation: "password" )






