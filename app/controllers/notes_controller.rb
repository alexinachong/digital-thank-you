class NotesController < ApplicationController
  def create
    @note = Note.new(note_params)

    if @note.save
      render "it worked!"
    end
  end

  private

  def note_params
    params.require(:note).permit(:photo_url, :template, :message)
  end
end
