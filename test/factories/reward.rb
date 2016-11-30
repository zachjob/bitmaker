FactoryGirl.define do
  factory :reward do
    project
    amount_in_cents 100
    description "test"
  end
end
