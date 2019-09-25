FactoryBot.define do
    factory :mail do
        recipients {'Faraz'}
        subject {'Important subject'}
        message {'Some important text'}
    end
end