FactoryGirl.define do
  factory :process_register do 
    proprietary_id 1
    vehicle_id 1
    register_type "registo_inicial"
    process_status "Aberto"
    notes "blabla"
    documents "BI"
  end
  
  factory :user do
    full_name "Stelio Moiane"
    profile "Administrator"
    username "smoiane"
    email "steliomo@gmail.com"
    encrypted_password 12345  
  end
end