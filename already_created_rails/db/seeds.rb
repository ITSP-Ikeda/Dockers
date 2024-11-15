ActiveRecord::Base.connection.execute("SELECT setval('parking_areas_id_seq', coalesce((SELECT MAX(id)+1 FROM parking_areas), 1), false)")
ActiveRecord::Base.connection.execute("SELECT setval('parking_usage_histories_id_seq', coalesce((SELECT MAX(id)+1 FROM parking_usage_histories), 1), false)")
ActiveRecord::Base.connection.execute("SELECT setval('parking_users_id_seq', coalesce((SELECT MAX(id)+1 FROM parking_users), 1), false)")
ActiveRecord::Base.connection.execute("SELECT setval('parkings_id_seq', coalesce((SELECT MAX(id)+1 FROM parkings), 1), false)")
ActiveRecord::Base.connection.execute("SELECT setval('payment_destinations_id_seq', coalesce((SELECT MAX(id)+1 FROM payment_destinations), 1), false)")
ActiveRecord::Base.connection.execute("SELECT setval('payments_id_seq', coalesce((SELECT MAX(id)+1 FROM payments), 1), false)")

ParkingArea.destroy_all
ParkingUsageHistory.destroy_all
ParkingUser.destroy_all
Parking.destroy_all
PaymentDestination.destroy_all
Payment.destroy_all

PaymentDestination.create(id: 1, payment_destination_name: "○○不動産", institution: "○○銀行", account_number: "000-1234567")
PaymentDestination.create(id: 2, payment_destination_name: "△△不動産", institution: "△△銀行", account_number: "000-1234567")
Parking.create(id: 1, parking_name: "西駐車場", payment_destination_id: 1)
Parking.create(id: 2, parking_name: "東駐車場", payment_destination_id: 1)
Parking.create(id: 3, parking_name: "北駐車場", payment_destination_id: 2)
Parking.create(id: 4, parking_name: "南駐車場", payment_destination_id: 2)

ParkingArea.create(id: 1, parking_area_name: "西No.1", parking_id: 1)
ParkingArea.create(id: 2, parking_area_name: "西No.2", parking_id: 1)
ParkingArea.create(id: 3, parking_area_name: "西No.3", parking_id: 1)
ParkingArea.create(id: 4, parking_area_name: "西No.4", parking_id: 1)

ParkingUser.create(id:1, parking_user_name: '地元　一郎', remark: '正社員')
ParkingUser.create(id:2, parking_user_name: '地元　二郎', remark: 'BP')