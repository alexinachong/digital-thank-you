class NotesController < ApplicationController

  def show
    @note = Note.find_by(id: params[:id])

    if @note
      render :show
    else
      render json: @note.errors.full_messages
    end
  end

  def create
    @note = Note.new(note_params)

    if @note.save
      render "it worked!"
    else
      render json: @note.errors.full_messages
    end
  end

  private

  def note_params
    params.require(:note).permit(:photo_url, :template, :message)
  end
end
