class VideosController < ApplicationController
    def home
    end

    # def create
    #  file_path='D:\Projects\Euphoria\public\Demo.mp4'
    #  binary_data = File.open(file_path, 'rb') { |file| file.read }
    #  Video.create(binary_data: binary_data)
    # end

    def show
      @video = Video.last
      # send_data @video.binary_data, type: 'video/mp4', disposition: 'inline'
    end

    def upload

    end

    def upload_video
      vdo = Video.new
      vdo.video = params[:video]  # params[:video] should contain the video file
      if vdo.save
        puts "@@@succcccesssss"
        redirect_to "/success"
      else
        render json: { error: 'Video upload failed.' }, status: :unprocessable_entity
      end
    end

    def success
    end

    def stream
      @video=Video.last
    end
end
