class OutputsController < ApplicationController
  def index
    @outputs = Output.all
    @output = Output.new
  end

  def create
    @output = Output.new(text: params[:output][:text])
    if @output.save
      ActionCable.server.broadcast 'output_channel', content: @output
    end
  end
end