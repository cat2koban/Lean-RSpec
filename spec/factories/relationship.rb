FactoryBot.define do
  factory :relationship do
    follower { :michael }
    followed { :archer }
  end
end
