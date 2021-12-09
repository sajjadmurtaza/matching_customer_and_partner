# frozen_string_literal: true

Customer.find_or_create_by(name: 'Rudi', phone_number: '01758837834')
service = Service.find_or_create_by(name: 'flooring')

%w[wood carpet tiles].each do |skill|
  Skill.find_or_create_by(name: skill, service_id: service.id)
end

all_skills = Skill.all

addresses = ['quickborner straße 83 13439 berlin', 'quickborner straße 80 13439 berlin',
             'Leopoldstraße 250B, 80807 München, Germany']

%w[Sam Jhon Lukas Ben Muller].each_with_index do |partner, index|
  partner = Partner.find_or_create_by(
    name: partner, operating_radius: 25, phone_number: '01758837834',
    address: addresses[index], rating: Random.rand(1...5)
  )

  partner.services << service
  partner.skills << all_skills.sample
end

PartnerSkillSet.all.each do |partner_skill|
  partner_skill.update(level: Random.rand(1...5))
end

p '====== Done! ======'
