class Dam < ApplicationRecord
	enum category:{
    選択してください:1,北海道電力:2,東北電力:3,東京電力:4,北陸電力:5,中部電力:6,関西電力:7,中国電力:8,四国電力:9,九州電力:10,沖縄電力:11
  }
  	attachment :image
end
