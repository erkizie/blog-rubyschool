FactoryBot.define do
  factory :comment do
    author { "Name" }
    sequence :body do |n| "comment body #{n}"
    end
  end
end