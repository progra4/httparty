class QuotesController < ApplicationController
  def random
    @quote = Quote.all.sample

    respond_to do |format|
      format.html # show.html.erb
      format.json do
        if @quote
          render json: @quote 
        else
          head :not_found
        end
      end
      format.text do
        if @quote
          render text: @quote.as_text
        else
          head :not_found
        end
      end
    end
  end

  # GET /quotes
  # GET /quotes.json
  def index

    if params[:limit].present?
      @quotes = Quote.limit(params[:limit])
    end

    if request.env["HTTP_ACCEPT_LANGUAGE"].present?
      @quotes ||= Quote.where(language: request.env["HTTP_ACCEPT_LANGUAGE"])
    end

    @quotes ||= Quote.all

    respond_to do |format|
      format.html# index.html.erb
      format.text do
        render text: @quotes.map(&:as_text).join("\n")
      end
      format.json { render json: @quotes }
    end
  end

  # GET /quotes/1
  # GET /quotes/1.json
  def show
    @quote = Quote.find_by_id(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json do
        if @quote
          render json: @quote 
        else
          head :not_found
        end
      end
      format.text do
        if @quote
          render text: @quote.as_text
        else
          head :not_found
        end
      end
    end
  end

  # GET /quotes/new
  # GET /quotes/new.json
  def new
    @quote = Quote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quote }
    end
  end

  # GET /quotes/1/edit
  def edit
    @quote = Quote.find(params[:id])
  end

  # POST /quotes
  # POST /quotes.json
  def create
    @quote = Quote.new(params.slice(:author, :content))

    respond_to do |format|
      if @quote.save
        format.html { redirect_to @quote, notice: 'Quote was successfully created.' }
        format.json { render json: @quote, status: :created, location: @quote }
        format.text do
          render text: @quote.as_text, status: :created, location: @quote
        end
      else
        format.html { render action: "new" }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
        format.text do
          render text: @quote.errors.full_messages.join("\n"), status: :unprocessable_entity
        end
      end
    end
  end

  # PUT /quotes/1
  # PUT /quotes/1.json
  def update
    @quote = Quote.find(params[:id])

    respond_to do |format|
      if @quote.update_attributes(params.slice(:author, :content))
        format.html { redirect_to @quote, notice: 'Quote was successfully updated.' }
        format.json { head :no_content }
        format.text  { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
        format.text do
          render text: @quote.errors.full_messages.join("\n"), status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /quotes/1
  # DELETE /quotes/1.json
  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy

    respond_to do |format|
      format.html { redirect_to quotes_url }
      format.json { head :no_content }
      format.text { head :no_content }
    end
  end
end
