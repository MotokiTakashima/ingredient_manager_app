class YoutubeController < ApplicationController
  GOOGLE_API_KEY = ENV["API_KEY"]

  def find_videos(keyword, after: 1.years.ago, before: Time.now)
    service = Google::Apis::YoutubeV3::YouTubeService.new
    service.key = GOOGLE_API_KEY

    keyword = params[:search]

    next_page_token = nil
    opt = {
      q: keyword,
      type: "video",
      max_results: 9,
      order: :date,
      page_token: next_page_token,
      published_after: after.iso8601,
      published_before: before.iso8601,
    }
    service.list_searches(:snippet, opt)
  end

  before_action :move_to_signed_in, except: [:top]

  def index
    @youtube_data = find_videos(@keyword)
    @check = params[:search]
  end

  def move_to_signed_in
    unless user_signed_in?
      #サインインしていないユーザーはログインページが表示される
      redirect_to "/users/sign_in"
    end
  end
end
