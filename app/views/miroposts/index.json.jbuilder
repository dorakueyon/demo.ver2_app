json.array!(@miroposts) do |miropost|
  json.extract! miropost, :content, :user_id
  json.url miropost_url(miropost, format: :json)
end