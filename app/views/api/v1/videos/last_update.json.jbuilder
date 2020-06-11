json.code 0
json.update_count @update_count
json.video_count @videos.length
json.data do
  json.array! @page_videos do |v|
    json.id v.id
    json.name v.name.length > 15 ? "#{v.name[0..14]}..." : v.name
    json.full_name v.name
    json.nickname v.nickname
    json.author_avatar v.avatar
    json.user_id v.user_id
    json.pv v.pv
    json.comments_count v.comments_count
    json.duration v.duration
    json.video_duration v.video_duration
    json.video_cover v.video_cover
  end
end