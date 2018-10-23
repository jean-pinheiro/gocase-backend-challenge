# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Order.create( reference: 'BR102030' , purchase_channel: 'SiteBR', client_name: 'Rogerio Lima',
 address: 'Rua Padre Valdevino, 2475 - Aldeota, Fortaleza - CE, 60135-041',
 delivery_service:'SEDEX', total_value: '123.30',
 line_items:'[{sku: case-my-best-friend, model: iPhone X, case type: Rose Leather}, {sku: powebank-sunshine, capacity: 10000mah}]',
 status: 'ready' )

Order.create( reference: 'DE102030' , purchase_channel: 'SiteDE', client_name: 'Johan Schultz',
 address: 'Altenberger Str. 13 50668 Köln, Deutschland',
 delivery_service:'FEDEX', total_value: '123.30',
 line_items:'[{sku: earphone-standard, color: white}, {sku: powebank-sunshine, capacity: 10000mah}]',
 status: 'ready' )

Order.create( reference: 'NL102030' , purchase_channel: 'SiteNL', client_name: 'Matjis Snowden',
 address: 'Alberdingk Thijmstraat 8II 1054 AJ, Amsterdam, Netherlands',
 delivery_service:'NEDEX', total_value: '123.30',
 line_items:'[{sku: case-my-best-friend, model: iPhone X, case type: Rose Leather}, {sku: earphone-standard, color: white}]',
 status: 'ready' )

Order.create( reference: 'BR204050' , purchase_channel: 'SiteBR', client_name: 'Diogo Silva',
 address: 'Rua Padre Mororo, 475 - Centro, Fortaleza - CE 60015-220',
 delivery_service:'SEDEX', total_value: '123.30',
 line_items:'[{sku: case-my-best-friend, model: iPhone X, case type: Rose Leather}, {sku: earphone-standard, color: white}, {sku: powebank-sunshine, capacity: 10000mah}]',
 status: 'ready' )

Order.create( reference: 'BR502030' , purchase_channel: 'SiteBR', client_name: 'Mario Sergio',
 address: 'R. Ana Bilhar, 572 - Meireles, Fortaleza - CE, 60160-110',
 delivery_service:'SEDEX', total_value: '123.30',
 line_items:'[{sku: powebank-sunshine, capacity: 10000mah}, {sku: earphone-standard, color: white}]',
 status: 'ready' )

Batch.create(reference: '201803-54', purchase_channel: 'SiteBR', orders:'{BR10203, BR204050, BR502030}')