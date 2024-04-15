# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

Repo.create!(
  name: "Event Wave Final",
  url: "https://github.com/FrazierMark/ACS-1320-Final-Event-Wave",
)

Repo.create!(
  name: "Learn Rails Depot",
  url: "https://github.com/FrazierMark/Learn_Rails_Depot",
)
