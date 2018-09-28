class SongsController < ApplicationController

    require 'csv'
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to @song
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

    @song.update(song_params)

    if @song.save
      redirect_to @song
    else
      render :edit
    end
  end

  def upload
      #Song Clean,ARTIST CLEAN,Release Year,COMBINED,First?,Year?,PlayCount,F*G
<<<<<<< HEAD
      binding.pry
      CSV.foreach(params[:songs].path, headers: true) do |song|
          binding.pry
     song = Song.create(title: song[0])
     binding.pry
=======
      CSV.foreach(params[:file].path, headers: true) do |song|
     song = Song.create(title: song[0])
>>>>>>> 7bbc39e3d4ba2c52145664e40799fa9f175b4cf3
     song.artist.build(name: song[1])
   end
   redirect_to root_path

  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    flash[:notice] = "Song deleted."
    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist_name)
  end
end
