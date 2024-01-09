Category.find_or_create_by(name: 'Category 1', external_id: 10)
Category.find_or_create_by(name: 'Category 2', external_id: 3)

Product.find_or_create_by(name: 'Product 1', external_id: 10)
Product.find_or_create_by(name: 'Product 2', external_id: 3)

Status.find_or_create_by(name: 'Status 1', short: 'ST1', external_id: 1, position: 0)

Type.find_or_create_by(name: 'Type 1', short: 'TP1', external_id: 1)

10.times do |i|
  Lead.find_or_create_by(
    first_name: "Lead#{i + 1}",
    last_name: "Surname#{i + 1}",
    category_id: i.even? ? 1 : 2,
    exclusive_for_product_id: i.even? ? nil : 10,
    source: "Source #{i + 1}",
    size: (i + 1) * 10,
    company_name: "Company #{i + 1}",
    type_id: i.even? ? 1 : 2,
    campaign: "Campaign #{i + 1}",
    status_id: 1,
    bttc: i.even? ? nil : Time.now + i.hours,
    timezone: 'CST',
    phone: 12312312312 + i,
    express: i.even?,
    enterprise: i.odd?,
    email: "email#{i + 1}@mail.com"
  )
end
