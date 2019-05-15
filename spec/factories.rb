FactoryBot.define do

    factory :user do
      id {1}
      email {"joe@gmail.com"}
      password {"123"}
      password_confirmation {"123"}
      firstName {"Oski"}
      lastName {"Bear"}
    end
    
    factory :stoolkit do
      title {"Test Toolkit"}
      author {"123"}
      toolkit
    end

    factory :sstep do
      stoolkit
      content {"Test Steps"}
    end

    factory :toolkit do
      title {"Test Toolkit"}
      author {"123"}
    end

    factory :category do 
      name {"Law"}
    end
end
