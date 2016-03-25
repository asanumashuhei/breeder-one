class DataController < ApplicationController
  before_action :set_datum, only: [:show, :edit, :update, :destroy]

  # GET /data
  # GET /data.json
  def index
    @data = Datum.last(9)
  end

  def scrape(n)
    agent = Mechanize.new
    page = agent.get("http://breeder-one.jp/search?dog_type=#{n}")
    elements = page.search('.dog') # elements.length => 33
    # 広告以外のものを取得する(9つ目以降は広告じゃない)
    elements_without_ads = elements[8..-1]
    # 「NEW」と付いているものだけselectする
    elements_filter_by_new = elements_without_ads.select { |element|
      element.search("li.new").text == "NEW"
    }
    # ランダムに1つ抽出
    target = elements_filter_by_new.sample

    url = target.at("a").attributes["href"].value

    detail_page = agent.get(url)

    date = detail_page.at('.data tr[7] td').text
    dname = detail_page.at('.data tr[2] a').text
    appeal = detail_page.at('.appeal p').text
    comment = detail_page.at('.table_style7 tr[7] td').text
    bname = detail_page.at('.data tr[9] a').text
    img_url = detail_page.at('#photo_list img')
    img_src = img_url[:src]
    t_date = Datum.create(:date => date, :dog_name => dname, :appeal => appeal, :comment => comment, :url => url, :breeder_name => bname, :img_url => img_src)
  end

  def scrape_new
    dog_types = [1, 2, 9, 4, 8, 3, 18, 59, 60]
    dog_types.each do |dog_type|
      scrape(dog_type)
    end
    redirect_to root_path
  end

  def regi_minbre
    @regi_minbre = OtherDog.where(site_name: 'みんなのブリーダー').order(status: :desc)
  end

  def regi_aitomo
    @regi_aitomo = OtherDog.where(site_name: '愛犬の友')
  end

  def delete
    @dogs = OtherDog.all
    @dogs.destroy_all
    redirect_to '/regi_aitomo'
  end

  # GET /data/1
  # GET /data/1.json
  def show
  end

  # GET /data/new
  def new
    @datum = Datum.new
  end

  # GET /data/1/edit
  def edit
  end

  # POST /data
  # POST /data.json
  def create
    @datum = Datum.new(datum_params)

    respond_to do |format|
      if @datum.save
        format.html { redirect_to @datum, notice: 'Datum was successfully created.' }
        format.json { render :show, status: :created, location: @datum }
      else
        format.html { render :new }
        format.json { render json: @datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data/1
  # PATCH/PUT /data/1.json
  def update
    respond_to do |format|
      if @datum.update(datum_params)
        format.html { redirect_to @datum, notice: 'Datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @datum }
      else
        format.html { render :edit }
        format.json { render json: @datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data/1
  # DELETE /data/1.json
  def destroy
    @datum.destroy
    respond_to do |format|
      format.html { redirect_to data_url, notice: 'Datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datum
      @datum = Datum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def datum_params
      params.fetch(:datum, {})
    end
end
