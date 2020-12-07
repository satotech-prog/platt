FactoryBot.define do
  factory :tweet do
    title { 'sampleサンプル' }
    exposition { 'sampleサンプル' }
    association :user

    after(:build) do |tweet|
      tweet.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
