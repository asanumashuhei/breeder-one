class CreateBreeders < ActiveRecord::Migration
  def change
    create_table :breeders do |t|
      t.string :site_name
      t.string :breeder_id
      t.string :breeder_name

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('NIHON6', 'みんなのブリーダー', '村山一男')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('ph0528', 'みんなのブリーダー', '山本恵美')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('imaiatuko4241', 'みんなのブリーダー', '今井敦子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('partridge', 'みんなのブリーダー', '渡邉浩行')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('00283', 'みんなのブリーダー', '黒田暁美')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('13860', 'みんなのブリーダー', '菊地原真澄')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('shakson', 'みんなのブリーダー', '鎌田由加里')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('THREEBELL', 'みんなのブリーダー', '岩本美鈴')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('jemi-moore', 'みんなのブリーダー', '竹場由美')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('momojeshi', 'みんなのブリーダー', '島田みどり')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('32553255', 'みんなのブリーダー', '西村照美')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('4111', 'みんなのブリーダー', '津田嘉昭')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('just-circle', 'みんなのブリーダー', '岩佐恵美')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('eastwan', 'みんなのブリーダー', '深澤文子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('iso4122', 'みんなのブリーダー', '黒川栄子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('mitsu', 'みんなのブリーダー', '西口慎之')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('temujin', 'みんなのブリーダー', '薮内耕二')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('58244165', 'みんなのブリーダー', '古谷毅')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('6666', 'みんなのブリーダー', '礒辺貴子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('mimigeinu', 'みんなのブリーダー', '中村敏恵')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('morimori0322', 'みんなのブリーダー', '森山敏春')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('nenemomo', 'みんなのブリーダー', '岩間直樹')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('yatugi', 'みんなのブリーダー', '矢次美枝子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('marvy', 'みんなのブリーダー', '池真美')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('cherryoasis', 'みんなのブリーダー', '桜井文吾')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('mini777ff', 'みんなのブリーダー', '山内薫')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('fairydog', 'みんなのブリーダー', '中川知美')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('100052', 'みんなのブリーダー', '大川美紀')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('chuchudog', 'みんなのブリーダー', '小林栄作')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('aiken-house.', 'みんなのブリーダー', '田沢三恵')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('RoseQueen', 'みんなのブリーダー', '岩室芳輝')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('aikennofukuda', 'みんなのブリーダー', '福田利恵')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('furenndo', 'みんなのブリーダー', '岡田美佐代')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('raimu19643', 'みんなのブリーダー', '前川和加子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('20010404', 'みんなのブリーダー', '江良徳子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('hounds1123', 'みんなのブリーダー', '森友美')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('angeltail', 'みんなのブリーダー', '中澤佐規子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('milkyhouse', 'みんなのブリーダー', '並岡晴美')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('gfdksora', 'みんなのブリーダー', '江上隆人')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('aidog1', 'みんなのブリーダー', '小谷栄作')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('momizi', 'みんなのブリーダー', '麻田駒子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('nmftn330', 'みんなのブリーダー', '久保田紗弥香')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('takno268', 'みんなのブリーダー', '高野明子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('riyu-subaru', 'みんなのブリーダー', '前野美鈴')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('dukeyamanaka', 'みんなのブリーダー', '山仲一輝')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('Hime0802', 'みんなのブリーダー', '櫻井文恵')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('37111495', 'みんなのブリーダー', '宗方富子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('kenken', 'みんなのブリーダー', '匂梅健司')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('shinestar', 'みんなのブリーダー', '星律子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('junelightgarden', 'みんなのブリーダー', '三品明子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('po1203', 'みんなのブリーダー', '杉本徹')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('123454321', 'みんなのブリーダー', '岩瀬典子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('pome', 'みんなのブリーダー', '前田高一')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('uta0530', 'みんなのブリーダー', '梶亜矢')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('59105910', 'みんなのブリーダー', '吉光寺雪恵')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('kurumi0407', 'みんなのブリーダー', '立野淳子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('bungohills', 'みんなのブリーダー', '宗英司')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('winding_road_2005', 'みんなのブリーダー', '矢野加奈子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('imai', 'みんなのブリーダー', '今井隆男')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('sei038', 'みんなのブリーダー', '西原眞文')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('2303', 'みんなのブリーダー', '村上一男')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('pretty-apple', 'みんなのブリーダー', '権藤富美')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('wanwan', 'みんなのブリーダー', '森本静香')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('tokotokotoko', 'みんなのブリーダー', '石床みさ江')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('hapinesu', 'みんなのブリーダー', '中田正一')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('puppyhousecancan', 'みんなのブリーダー', '川口さゆり')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('hime-no-ouchi', 'みんなのブリーダー', '玉川美佐子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('mickey', 'みんなのブリーダー', '幸野じゅり')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('1123', 'みんなのブリーダー', '小松崎ゆかり')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('precieusejp', 'みんなのブリーダー', '入口光弥')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('3523', 'みんなのブリーダー', '長田美保')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('candycoco', 'みんなのブリーダー', '菊地純一')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('Max-Garden', 'みんなのブリーダー', '大内タダシ トム')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('kanamori', 'みんなのブリーダー', '金盛祥光')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('qkmt', 'みんなのブリーダー', '高口昌史')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('topukapi', 'みんなのブリーダー', '上田良子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('madonna', 'みんなのブリーダー', '本間一夫')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('87878989', 'みんなのブリーダー', '足立彰典')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('6235', 'みんなのブリーダー', '三嵜敏男')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('kids1997', 'みんなのブリーダー', '石内基晴')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('it0220', 'みんなのブリーダー', '田中満恵')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('0389', 'みんなのブリーダー', '池間美有紀')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('LOVEARTH', 'みんなのブリーダー', '西尾良久')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('Dion2006', 'みんなのブリーダー', '伊窪美樹子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('GOI02', 'みんなのブリーダー', '五井智')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('silukupapa', 'みんなのブリーダー', '五十嵐尚子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('kaminoyama', 'みんなのブリーダー', '中島美代子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('nn7373nn', 'みんなのブリーダー', '吉田奈美')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('amiyu', 'みんなのブリーダー', '高橋明彦')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('toyohira', 'みんなのブリーダー', '川辺進')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('fourcoverdog', 'みんなのブリーダー', '富松智美')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('rose1016', 'みんなのブリーダー', '石川珠美')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('madapapi', 'みんなのブリーダー', '後藤喜代美')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('OrpheusStar', 'みんなのブリーダー', '村田勉')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('nra40501', 'みんなのブリーダー', '藤田敬子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('michi131', 'みんなのブリーダー', '米山一人')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('sunday', 'みんなのブリーダー', '田口敏行')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('booboomonsters', 'みんなのブリーダー', '木下美華')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('00930', 'みんなのブリーダー', '服部吉伸')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('marimama', 'みんなのブリーダー', '奥田康子')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('lanoir', 'みんなのブリーダー', '武田ひろみ')")
        execute("insert into breeders(breeder_id, site_name, breeder_name) values ('alfkennel', 'みんなのブリーダー', '吉野樹理')")
      end
    end
  end
end
