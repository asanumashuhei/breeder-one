class OtherDog < ActiveRecord::Base
  OPTS = {
        depth_limit: 0,
        delay: 1
  }

  BREEDERS = ["NIHON6","ph0528","imaiatuko4241","partridge","00283","13860","shakson","THREEBELL","jemi-moore","momojeshi","32553255","4111","just-circle","eastwan","iso4122","mitsu","temujin","58244165","6666","mimigeinu","morimori0322","nenemomo","yatugi","marvy","cherryoasis","mini777ff","fairydog","100052","chuchudog","aiken-house.","RoseQueen","aikennofukuda","furenndo","raimu19643","20010404","hounds1123","angeltail","milkyhouse","gfdksora","aidog1","momizi","nmftn330","takno268","riyu-subaru","dukeyamanaka","Hime0802","37111495","kenken","shinestar","junelightgarden","po1203","123454321","pome","uta0530","59105910","kurumi0407","bungohills","winding_road_2005","imai","sei038","2303","pretty-apple","wanwan","tokotokotoko","hapinesu","puppyhousecancan","hime-no-ouchi","mickey","1123","precieusejp","3523","candycoco","Max-Garden","kanamori","qkmt","topukapi","madonna","87878989","6235","kids1997","it0220","0389","LOVEARTH","Dion2006","GOI02","silukupapa","kaminoyama","nn7373nn","amiyu","toyohira","fourcoverdog","rose1016","madapapi","OrpheusStar","nra40501","michi131","sunday","booboomonsters","00930"]

  def self.minbre_selling
    agent = Mechanize.new
    BREEDERS.each do |breeder|

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
     BREEDERS.each do |breeder|

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
     BREEDERS.each do |breeder|

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
     BREEDERS.each do |breeder|

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
    breeders = ["00193","05860","05986","05912","00619","05944","00444","00532","05881","00302","00504","00376"]
    breeders.each do |breeder|

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
end