class CadastrosController < ApplicationController
  # GET /cadastros
  # GET /cadastros.xml
  def index
    @cadastros = Cadastro.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cadastros }
    end
  end

  # GET /cadastros/1
  # GET /cadastros/1.xml
  def show
    @cadastro = Cadastro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cadastro }
    end
  end

  # GET /cadastros/new
  # GET /cadastros/new.xml
  def new
    @cadastro = Cadastro.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cadastro }
    end
  end

  # GET /cadastros/1/edit
  def edit
    @cadastro = Cadastro.find(params[:id])
  end

  # POST /cadastros
  # POST /cadastros.xml
  def create
    @cadastro = Cadastro.new(params[:cadastro])

    respond_to do |format|
      if @cadastro.save
        format.html { redirect_to(@cadastro, :notice => 'Cadastro was successfully created.') }
        format.xml  { render :xml => @cadastro, :status => :created, :location => @cadastro }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cadastro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cadastros/1
  # PUT /cadastros/1.xml
  def update
    @cadastro = Cadastro.find(params[:id])

    respond_to do |format|
      if @cadastro.update_attributes(params[:cadastro])
        format.html { redirect_to(@cadastro, :notice => 'Cadastro was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cadastro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cadastros/1
  # DELETE /cadastros/1.xml
  def destroy
    @cadastro = Cadastro.find(params[:id])
    @cadastro.destroy

    respond_to do |format|
      format.html { redirect_to(cadastros_url) }
      format.xml  { head :ok }
    end
  end
end
