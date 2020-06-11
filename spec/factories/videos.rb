FactoryGirl.define do
  factory :video do

    association :user
    name 'test video name'
    status 0
    video_cover 'http://video.com/video_cover'
    video_src 'http://video.com/video_src'
  end
end