class OtherDog < ActiveRecord::Base
  OPTS = {
        depth_limit: 0,
        delay: 1
  }

    MIN_BREEDERS = Breeder.where(site_name: 'みんなのブリーダー').pluck("breeder_id")
    AI_BREEDERS = Breeder.where(site_name: '愛犬の友').pluck("breeder_id")

  def self.minbre_selling

    agent = Mechanize.new

    MIN_BREEDERS.each do |breeder|

      for i in 1...20 do
        page = agent.get("https://www.min-breeder.com/breederDetail.php?act=&breeder_id=#{breeder}&key_dog_sort_cd=&from=&kind=all&dog_sex=&dog_status=1&breed_kind=&pageNum=#{i}#dog_list", OPTS)
        elements = page.search('.pic_dog_contents')

          elements.each do |element|

            element.xpath("//*[@class='box02Inner']/div[@class='pic_dog_contents']").each do |node|

                id = node.xpath("./p[@class='pic_kind_name']/a/@href").to_s
                dog_type = node.xpath("./p[@class='pic_kind_name']/a/text()").to_s
                birthday = node.xpath("./p[@class='pic_detail'][1]/text()").to_s
                price = node.xpath("./p[@class='pic_price price_background']/font/text()").to_s
                status= "販売中"
                site_name = "みんなのブリーダー"
                breeder_id = breeder

                OtherDog.create(:site_name => site_name, :dog_id => id, :dog_type => dog_type, :birthday => birthday, :price => price, :status => status, :breeder_id => breeder_id)

            end
          end
      end
    end
  end

  def self.minbre_nego
    agent = Mechanize.new
     MIN_BREEDERS.each do |breeder|

      for i in 1...20 do
        page = agent.get("https://www.min-breeder.com/breederDetail.php?act=&breeder_id=#{breeder}&key_dog_sort_cd=&from=&kind=all&dog_sex=&dog_status=2&breed_kind=&pageNum=#{i}#dog_list", OPTS)
        elements = page.search('.pic_dog_contents')

          elements.each do |element|

            element.xpath("//*[@class='box02Inner']/div[@class='pic_dog_contents']").each do |node|

                id = node.xpath("./p[@class='pic_kind_name']/a/@href").to_s
                dog_type = node.xpath("./p[@class='pic_kind_name']/a/text()").to_s
                birthday = node.xpath("./p[@class='pic_detail'][1]/text()").to_s
                price = node.xpath("./p[@class='pic_price price_background']/font/text()").to_s
                status= "商談中"
                site_name = "みんなのブリーダー"
                breeder_id = breeder

                OtherDog.create(:site_name => site_name, :dog_id => id, :dog_type => dog_type, :birthday => birthday, :price => price, :status => status, :breeder_id => breeder_id)

            end
          end
        end
      end
    end

  def self.minbre_buy
    agent = Mechanize.new
     MIN_BREEDERS.each do |breeder|

      for i in 1...20 do
        page = agent.get("https://www.min-breeder.com/breederDetail.php?act=&breeder_id=#{breeder}&key_dog_sort_cd=&from=&kind=all&dog_sex=&dog_status=9&breed_kind=&pageNum=#{i}#dog_list", OPTS)
        elements = page.search('.pic_dog_contents')

          elements.each do |element|

            element.xpath("//*[@class='box02Inner']/div[@class='pic_dog_contents']").each do |node|

                id = node.xpath("./p[@class='pic_kind_name']/a/@href").to_s
                dog_type = node.xpath("./p[@class='pic_kind_name']/a/text()").to_s
                birthday = node.xpath("./p[@class='pic_detail'][1]/text()").to_s
                price = node.xpath("./p[@class='pic_price price_background']/font/text()").to_s
                status= "成約済み"
                site_name = "みんなのブリーダー"
                breeder_id = breeder

                OtherDog.create(:site_name => site_name, :dog_id => id, :dog_type => dog_type, :birthday => birthday, :price => price, :status => status, :breeder_id => breeder_id)

            end
          end
        end
      end
    end

  def self.minbre_end
    agent = Mechanize.new
     MIN_BREEDERS.each do |breeder|

      for i in 1...20 do
        page = agent.get("https://www.min-breeder.com/breederDetail.php?act=&breeder_id=#{breeder}&key_dog_sort_cd=&from=&kind=all&dog_sex=&dog_status=8&breed_kind=&pageNum=#{i}#dog_list", OPTS)
        elements = page.search('.pic_dog_contents')

          elements.each do |element|

            element.xpath("//*[@class='box02Inner']/div[@class='pic_dog_contents']").each do |node|

                id = node.xpath("./p[@class='pic_kind_name']/a/@href").to_s
                dog_type = node.xpath("./p[@class='pic_kind_name']/a/text()").to_s
                birthday = node.xpath("./p[@class='pic_detail'][1]/text()").to_s
                price = node.xpath("./p[@class='pic_price price_background']/font/text()").to_s
                status= "販売終了"
                site_name = "みんなのブリーダー"
                breeder_id = breeder

                OtherDog.create(:site_name => site_name, :dog_id => id, :dog_type => dog_type, :birthday => birthday, :price => price, :status => status, :breeder_id => breeder_id)

            end
          end
        end
      end
    end


  def self.aitomo_selling
    agent = Mechanize.new
    AI_BREEDERS.each do |breeder|

      for i in 0...20 do
        page = agent.get("http://breeder.aikenonline.jp/breeders/details.php?b=#{breeder}&pages=#{i}", OPTS)
        elements = page.search('.DogList')

        elements.each do |element|

          element.xpath("//*[@id='Container']/*[@id='Contents']/table[@class='DogList']").each do |node|

              id = node.xpath("./tr[2]/td[2]/text()").to_s
              dog_type = node.xpath("./tr[2]/td[1]/text()").to_s
              birthday = node.xpath("./tr[4]/td[1]/text()").to_s
              price = node.xpath("./tr[5]/td/span/text()").to_s
              status = "販売中"
              site_name = "愛犬の友"
              breeder_id = breeder

                OtherDog.create(:site_name => site_name, :dog_id => id, :dog_type => dog_type, :birthday => birthday, :price => price, :status => status, :breeder_id => breeder_id)
          end # node終わり
        end # page終わり
      end # Anemone終わり
    end
  end

  def self.to_csv
    columns = ["dog_id", "breeder_id", "dog_type", "birthday", "price", "status"]
    csv_data = CSV.generate do |csv|
      # column_namesはカラム名を配列で返す
      # 例: ["id", "name", "price", "released_on", ...]
      csv << columns
      all.each do |dog|
        # attributes はカラム名と値のハッシュを返す
        # 例: {"id"=>1, "name"=>"レコーダー", "price"=>3000, ... }
        # valudes_at はハッシュから引数で指定したキーに対応する値を取り出し、配列にして返す
        # 下の行は最終的に column_namesで指定したvalue値の配列を返す
        csv << dog.attributes.values_at(*columns)
      end
    end
    # csv_data.encode(Encoding::SJIS)
  end
end