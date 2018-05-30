# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# # Producer.create(name: "samsung", image: "aaaa")
# #Producer.count

# OrderStatus.delete_all
# OrderStatus.create! id: 1, name: "In Progress"
# OrderStatus.create! id: 2, name: "Placed"
# OrderStatus.create! id: 3, name: "Shipped"
# OrderStatus.create! id: 4, name: "Cancelled"

# # name_product = ["DELL",     
# #     "ASUS",
# #     "APPLE",
# #     "OPPO",
# #     "MSI",
# #     "HP",
# #     "ACER",
# #     "LENOVO",
# #     "FUJITSU",
# #     "SAMSUNG",
# #     "HUAWEI",
# #     ]
# #     image_product = ["images/nsx/dell.png",
# #         "images/nsx/asus.png",
# #         "images/nsx/apple.png",
# #         "images/nsx/msi.png",
# #         "images/nsx/hp.png",
# #         "images/nsx/acer.png",
# #         "images/nsx/lenovo.png",
# #         "images/nsx/fujitsu.png",
# #         "images/nsx/samsung.png",
# #         "images/nsx/huawei.png",
# #         "images/nsx/oppo.png",
# #         ]

# #     i = 0;
# #     loop do
# #         Producer.create(PRONAME: name_product[i],image: image_product[i])
# #         i = i+1;
# #         if(i==name_product.length)
# #             break;
# #         end
# #     end
# # name_category = ["Laptop","Phone","Tablet"]

#     # name_category.each do |index|
#     # Category.create(name: "#{index}")
#     # end

# # 100.times do |a|
# #     Product.create(ram: a,category_id: 1 ,producer_id: 1)
# # 

# # p Category.find(1).products.where(id: 150).first.ram
# # 
# # Category.joins("LEFT JOIN products ON categories.id = products.category_id")
# # Category.joins(products: :producer).where(name: 'Laptop').select('producers.name').each do |element|
# #     p element.name
# # end
#     # @all = Category.all
   
#     #  @all.each do |t|
#     #      @lista= Array(@lista).push(Category.joins(products: :producer).where(name: t.name).group('producers.name').pluck('producers.name'))
#     #  end
#     #  @count =0
#     #  @all.each do |t|
#     #     p t.name
#     #     @lista[@count].each do |t|
#     #         p t
#     #     end
#     #     @count=@count+1
#     # end
#     p 


#     # name_product = ["DELL",
#     # "ASUS",
#     # "APPLE",
#     # "OPPO",
#     # "MSI",
#     # "HP",
#     # "ACER",
#     # "LENOVO",
#     # "FUJITSU",
#     # "SAMSUNG",
#     # "HUAWEI",
#     # ]
#     # image_product = ["images/nsx/dell.png",
#     #     "images/nsx/asus.png",
#     #     "images/nsx/apple.png",
#     #     "images/nsx/msi.png",
#     #     "images/nsx/hp.png",
#     #     "images/nsx/acer.png",
#     #     "images/nsx/lenovo.png",
#     #     "images/nsx/fujitsu.png",
#     #     "images/nsx/samsung.png",
#     #     "images/nsx/huawei.png",
#     #     "images/nsx/oppo.png",
#     #     ]

#     # i = 0;
#     # loop do
#     #     Producer.create(name: name_product[i],image: image_product[i])
#     #     i = i+1;
#     #     if(i==name_product.length)
#     #         break;
#     #     end
#     # end

# # Category.create(name: "Phone",image:"images/category/phone.jpg")
# # Category.create(name: "Tablet",image:"images/category/tablet.jpg")
# # Category.create(name: "Laptop",image:"images/category/laptop.png")

    # ----------------------------------------------------------------------------------------------------------------------------------------
    #                                                            Phone
    # ----------------------------------------------------------------------------------------------------------------------------------------    
    # Product.create(cpu:"Apple A11 Bionic 6 nhân",ram:"3 GB",memory:"64 GB",vga:"Lightning",front_camera:"7 MP",back_camera:"2 camera 12 MP",
    #                 os:"iOS 11",bluetooth:"Bluetooth 5.0",screen:"5.8inch OLED Multi-Touch HDR 1125 x 2436 Pixels ",pin:"2716 mAh",
    #                 price:29900000,#images:"1703392_1.png    1703392_1.png   1703392_1.png",
    #                 weight:"174g",category_id:2,producer_id:3,
    #                 status:"Dang ban",numofbuy:"20",name:"Ðiện thoại iPhone X 64GB (Bạc)")

    #  Product.create(cpu:"Apple A11 Bionic 6 nhân",ram:"3 GB",memory:"64 GB",vga:"Lightning",front_camera:"7 MP",back_camera:"2 camera 12 MP",
    #                 os:"iOS 11",bluetooth:"Bluetooth 5.0",screen:"5.8inch OLED Multi-Touch HDR 1125 x 2436 Pixels ",pin:"2716 mAh",
    #                 price:29900000,#images:"1703392_1.png""1703392_1.png""1703392_1.png",
    #                 weight:"174g",category_id:2,producer_id:3,
    #                 status:"Dang ban",numofbuy:"20",name:"Ðiện thoại iPhone X 64GB (Space gray)")

    # # Product.create(cpu:"Apple A11 Bionic 6 nhân",ram:"3 GB",memory:" 64 GB",vga:"Lightning",front_camera:"7 MP",back_camera:"2 camera 12 MP",
    # #                 os:"iOS 11",bluetooth:"Bluetooth 5.0",screen:"OLED Multi-Touch HDR",pin:"2716 mAh",
    # #                 price:29900000,images:"images/phone/1703394_1;
    # #                                         images/phone/1703394_2;
    # #                                         images/phone/1703394_3",
    # #                 weight:"",category_id:1,producer_id:3,
    # #                 status:"Dang ban",numofbuy:"10",name:"Ðiện thoại iPhone X 64GB (Space gray)")
    # Product.create(cpu:"Apple A11 Bionic 6 nhân",ram:"2 GB",memory:"64 GB",vga:"Lightning",front_camera:"7 MP",back_camera:"2 camera 12 MP",
    #     os:"iOS 11",bluetooth:"v5.0, A2DP, LE, EDR",screen:"4.7inch LED-Backlit IPS LCD HD (1334 x 750 Pixels)",pin:"1821 mAh",
    #     price:29900000,#images:"1703392_1.png""1703392_1.png""1703392_1.png",
    #     weight:"148 g",category_id:2,producer_id:3,
    #     status:"Dang ban",numofbuy:"20",name:"Ðiện thoại iPhone 8 64GB (Xám)")
    
    # # Product.create(cpu:"6 loi",ram:"3GB",memory:"",vga:"Lightning",front_camera:"",back_camera:"",
    # #                 os:"iOS 11",bluetooth:"Bluetooth 5.0",screen:"LED-Backlit IPS LCD",pin:"2716 mAh",
    # #                 price:20990000,images:"images/phone/1702944_1;
    # #                                         images/phone/1702944_2;
    # #                                         images/phone/1702944_3",
    # #                 weight:"",category_id:1,producer_id:3,
    # #                 status:"Dang ban",numofbuy:"10",name:"Ðiện thoại iPhone 8 64GB (Xám)")
    
    # # Product.create(cpu:"6 loi",ram:"3GB",memory:"",vga:"Lightning",front_camera:"",back_camera:"",
    # #                 os:"iOS 11",bluetooth:"Bluetooth 5.0",screen:"OLED Multi-Touch HDR",pin:"2716 mAh",
    # #                 price:29900000,images:"images/phone/1702947_1;
    # #                                         images/phone/1702947_2;
    # #                                         images/phone/1702947_3",
    # #                 weight:"",category_id:1,producer_id:3,
    # #                 status:"Dang ban",numofbuy:"10",name:"Ðiện thoại iPhone 8 Plus 64GB (Xám)")
    # Product.create(cpu:"Apple A11 Bionic 6 nhân",ram:"2 GB",memory:"64 GB",vga:"Lightning",front_camera:"7 MP",back_camera:"2 camera 12 MP",
    #     os:"iOS 11",bluetooth:"v5.0, A2DP, LE, EDR",screen:"4.7inch LED-Backlit IPS LCD HD (1334 x 750 Pixels)",pin:"1821 mAh",
    #     price:29900000,#images:"1703392_1.png""1703392_1.png""1703392_1.png",
    #     weight:"148 g",category_id:2,producer_id:3,
    #     status:"Dang ban",numofbuy:"20",name:"Ðiện thoại iPhone 8 64GB (Vàng)")

    # # Product.create(cpu:"3core",ram:"3GB",memory:"",vga:"Lightning",front_camera:"",back_camera:"",
    # #                 os:"iOS 11",bluetooth:"Bluetooth 5.0",screen:"OLED Multi-Touch HDR",pin:"2716 mAh",
    # #                 price:20990000,images:"images/phone/1702942_1;
    # #                                         images/phone/1702942_2;
    # #                                         images/phone/1702942_3",
    # #                 weight:"",category_id:1,producer_id:3,
    # #                 status:"Dang ban",numofbuy:"10",name:"Ðiện thoại iPhone 8 64GB (Vàng)")
    # Product.create(cpu:"Apple A11 Bionic 6 nhân",ram:"2 GB",memory:"64 GB",vga:"Lightning",front_camera:"7 MP",back_camera:"2 camera 12 MP",
    #     os:"iOS 11",bluetooth:"v5.0, A2DP, LE, EDR",screen:"4.7inch LED-Backlit IPS LCD HD (1334 x 750 Pixels)",pin:"1821 mAh",
    #     price:29900000,#images:"1703392_1.png""1703392_1.png""1703392_1.png",
    #     weight:"148 g",category_id:2,producer_id:3,
    #     status:"Dang ban",numofbuy:"20",name:"Ðiện thoại iPhone 8 64GB (Bạc)")
    
    # # Product.create(cpu:"3core",ram:"3GB",memory:"",vga:"Lightning",front_camera:"",back_camera:"",
    # #                 os:"iOS 11",bluetooth:"Bluetooth 5.0",screen:"OLED Multi-Touch HDR",pin:"2716 mAh",
    # #                 price:20990000,images:"images/phone/1702943_1;
    # #                                         images/phone/1702943_2;
    # #                                         images/phone/1702943_3",
    # #                 weight:"",category_id:1,producer_id:3,
    # #                 status:"Dang ban",numofbuy:"10",name:"Ðiện thoại iPhone 8 64GB (Bạc)")
    
    # Product.create(cpu:"Exynos 9810 8 nhân 64 bit",ram:"6 GB",memory:"64 GB",vga:"Mali-G72 MP18",front_camera:"8MP",back_camera:"12 MP",
    #                 os:"Android 8.0 (Oreo)",bluetooth:"v5.0, apt-X, A2DP, LE, EDR",screen:"5.8inch Super AMOLED 2K+ (1440 x 2960 Pixels)",pin:"3000 mAh",
    #                 price:19990000,#images:"images/phone/1800423_1;
    #                                    #     images/phone/1800423_2;
    #                                   #      images/phone/1800423_3",
    #                 weight:"163g (5.75 oz)",category_id:2,producer_id:12,
    #                 status:"Dang ban",numofbuy:"10",name:"Ðiện thoại Samsung (Galaxy S9)-SM-G960FZPDXXV (Tím)")
   
    #                 Product.create(cpu:"Exynos 9810 8 nhân 64 bit",ram:"6 GB",memory:"64 GB",vga:"Mali-G72 MP18",front_camera:"8MP",back_camera:"2 camera 12 MP",
    #     os:"Android 8.0 (Oreo)",bluetooth:"v5.0, apt-X, A2DP, LE, EDR",screen:"6.2inch Super AMOLED 2K+ (1440 x 2960 Pixels)",pin:"3500 mAh",
    #     price:23490000,#images:"images/phone/1800423_1;
    #                         #    images/phone/1800423_2;
    #                         #    images/phone/1800423_3",
    #     weight:"189 g",category_id:2,producer_id:12,
    #     status:"Dang ban",numofbuy:"10",name:"Ðiện thoại Samsung (Galaxy S9 plus)-SM-G965FZKDXXV (Tím)")

    # # Product.create(cpu:"Mali-G72 MP18",ram:"6GB",memory:"",vga:"3.1, Type-C 1.0",front_camera:"8MP",back_camera:"2 camera 12 MP",
    # #                 os:"Android",bluetooth:"v5.0, apt-X, A2DP, LE, EDR",screen:"Super AMOLED",pin:"3500 mAh",
    # #                 price:23490000,images:"images/phone/1800425_1;
    # #                                     images/phone/1800425_2;
    # #                                     images/phone/1800425_3",
    # #                 weight:"189 g",category_id:1,producer_id:10,
    # #                 status:"Dang ban",numofbuy:"10",name:"Ðiện thoại Samsung (Galaxy S9 plus)-SM-G965FZKDXXV (Ðen)")
    # Product.create(cpu:"Exynos 9810 8 nhân 64 bit",ram:"6 GB",memory:"64 GB",vga:"Mali-G72 MP18",front_camera:"8MP",back_camera:"12 MP",
    #     os:"Android 8.0 (Oreo)",bluetooth:"v5.0, apt-X, A2DP, LE, EDR",screen:"5.8inch Super AMOLED 2K+ (1440 x 2960 Pixels)",pin:"3000 mAh",
    #     price:19990000,#images:"images/phone/1800423_1;
    #                         #    images/phone/1800423_2;
    #                           #  images/phone/1800423_3",
    #     weight:"163g (5.75 oz)",category_id:2,producer_id:12,
    #     status:"Dang ban",numofbuy:"10",name:"Ðiện thoại Samsung (Galaxy S9)-SM-G960FZPDXXV (Đen)")
    
    # # Product.create(cpu:"Mali-G72 MP18",ram:"6GB",memory:"",vga:"3.1, Type-C 1.0",front_camera:"8MP",back_camera:"12 MP",
    # #                 os:"Android",bluetooth:"v5.0, apt-X, A2DP, LE, EDR",screen:"Super AMOLED",pin:"3000 mAh",
    # #                 price:19990000,images:"images/phone/1800422_1;
    # #                                         images/phone/1800422_2;
    # #                                         images/phone/1800422_3",
    # #                 weight:"163g (5.75 oz)",category_id:1,producer_id:10,
    # #                 status:"Dang ban",numofbuy:"10",name:"Ðiện thoại Samsung (Galaxy S9)-SM-G960FZPDXXV (Ðen)")
    # Product.create(cpu:"Exynos 9810 8 nhân 64 bit",ram:"6 GB",memory:"64 GB",vga:"Mali-G72 MP18",front_camera:"8MP",back_camera:"2 camera 12 MP",
    #     os:"Android 8.0 (Oreo)",bluetooth:"v5.0, apt-X, A2DP, LE, EDR",screen:"6.2inch Super AMOLED 2K+ (1440 x 2960 Pixels)",pin:"3500 mAh",
    #     price:23490000,#images:"images/phone/1800423_1;
    #                           #  images/phone/1800423_2;
    #                          #   images/phone/1800423_3",
    #     weight:"189 g",category_id:2,producer_id:12,
    #     status:"Dang ban",numofbuy:"10",name:"Ðiện thoại Samsung (Galaxy S9 plus)-SM-G965FZKDXXV (Đen)")
        
    # # Product.create(cpu:"Mali-G72 MP18",ram:"6GB",memory:"",vga:"3.1, Type-C 1.0",front_camera:"8MP",back_camera:"2 camera 12 MP",
    # #                 os:"Android",bluetooth:"v5.0, apt-X, A2DP, LE, EDR",screen:"Super AMOLED",pin:"3500 mAh",
    # #                 price:24990000,images:"images/phone/1800426_1;
    # #                                     images/phone/1800426_2;
    # #                                     images/phone/1800426_3",
    # #                 weight:"189 g",category_id:1,producer_id:10,
    # #                 status:"Dang ban",numofbuy:"10",name:"Ðiện thoại Samsung (Galaxy S9 plus)-SM-G965FZKDXXV (Ðen)")
    
    # Product.create(cpu:"MediaTek Helio P60 8 nhân 64-bit",ram:"6 GB",memory:"128 GB",vga:"Mali-G72 MP3",front_camera:"25 MP",back_camera:"16 MP",
    #                 os:"Andoid 8.1 (ColorOS 5.0)",bluetooth:"4.2, A2DP, LE",screen:"6.23inch LTPS LCD Full HD+ (1080 x 2280 Pixels)",pin:"3400 mAh",
    #                 price:9990000,#images:"images/phone/451768_1;
    #                                #     images/phone/451768_2;
    #                                 #    images/phone/451768_3",
    #                 weight:"158g",category_id:2,producer_id:11,
    #                 status:"Dang ban",numofbuy:"10",name:"Oppo F7 128GB")
    
    # Product.create(cpu:"Mediatek Helio P23 8 nhân 64-bit",ram:"6 GB",memory:"64 GB",vga:"Mali-G71 MP2",front_camera:"20 MP",back_camera:"16 MP",
    #                 os:"ColorOS 3.2 (Android 7.1)",bluetooth:"4.2, A2DP, LE",screen:"6.0inch IPS LCD Full HD+ (1080 x 2160 Pixels)",pin:"3200 mAh",
    #                 price:8990000,#images:"images/phone/415281_1;
    #                               #      images/phone/415281_2;
    #                                  #   images/phone/415281_3",
    #                 weight:"152g",category_id:2,producer_id:11,
    #                 status:"Dang ban",numofbuy:"10",name:"OPPO F5 6GB")
    
    # Product.create(cpu:"Mediatek Helio P23 8 nhân 64-bit",ram:"4GB",memory:"32 GB",vga:"Mali-G71 MP2",front_camera:"20 MP",back_camera:"16 MP",
    #                 os:"ColorOS 3.2 (Android 7.1)",bluetooth:"4.2, A2DP, LE",screen:"6.0inch IPS LCD Full HD+ (1080 x 2160 Pixels)",pin:"3200 mAh",
    #                 price:6990000,#images:"images/phone/408153_1;
    #                                #     images/phone/408153_2;
    #                                #     images/phone/408153_3",
    #                 weight:"152g",category_id:2,producer_id:11,
    #                 status:"Dang ban",numofbuy:"10",name:"OPPO F5 ")
    
    # Product.create(cpu:"MediaTek Helio P60 8 nhân 64-bit",ram:"4 GB",memory:"64 GB",vga:"Mali-G72 MP3",front_camera:"25 MP",back_camera:"16 MP",
    #     os:"Andoid 8.1 (ColorOS 5.0)",bluetooth:"4.2, A2DP, LE",screen:"6.23inch LTPS LCD Full HD+ (1080 x 2280 Pixels)",pin:"3400 mAh",
    #     price:7990000,#images:"images/phone/451768_1;
    #                   #     images/phone/451768_2;
    #                    #     images/phone/451768_3",
    #     weight:"158g",category_id:2,producer_id:11,
    #     status:"Dang ban",numofbuy:"10",name:"Oppo F7")
    # # Product.create(cpu:"8 nhan",ram:"6GB",memory:"",vga:"Micro USB",front_camera:"25 MP",back_camera:"16 MP",
    # #                 os:"Andoid 8.1 (ColorOS 5.0)",bluetooth:"4.2, A2DP, LE",screen:"IPS LCD",pin:"3400 mAh",
    # #                 price:7990000,images:"images/phone/451765_1;
    # #                                     images/phone/451765_2;
    # #                                     images/phone/451765_3",
    # #                 weight:"158 g",category_id:1,producer_id:4,
    # #                 status:"Dang ban",numofbuy:"10",name:"OPPO F7")
    
    # Product.create(cpu:"HiSilicon Kirin 659 8 nhân",ram:"4 GB",memory:"64 GB",vga:"Mali-T830",front_camera:"16 MP",back_camera:"16 MP và 2 MP (2 camera)",
    #                 os:"Andoid 8.1 (ColorOS 5.0)",bluetooth:"4.2, A2DP, LE",screen:"5.84inch IPS LCD Full HD+ (1080 x 2280 Pixels)",pin:"3000 mAh",
    #                 price:6990000,#images:"images/phone/415283_1;
    #                                 #    images/phone/415283_2;
    #                                  #   images/phone/415283_3",
    #                 weight:"145g",category_id:2,producer_id:7,
    #                 status:"Dang ban",numofbuy:"10",name:"Huawei Nova 3e")
    
    # Product.create(cpu:"MT6737T, 4 nhân",ram:"2 GB",memory:"16 GB",vga:"Mali T720",front_camera:"5 MP",back_camera:"8 MP",
    #                 os:"Android 6.0 (Marshmallow)",bluetooth:"V4.0",screen:"5inch IPS LCD HD (720 x 1280 pixels)",pin:"3000 mAh",
    #                 price:2790000,#images:"images/phone/423353_1;
    #                                 #    images/phone/423353_2;
    #                                 #    images/phone/423353_3",
    #                 weight:"150 g",category_id:2,producer_id:7,
    #                 status:"Dang ban",numofbuy:"10",name:"Huawei Y5 2017")

    # ----------------------------------------------------------------------------------------------------------------------------------------
    #                                                            Laptop
    # ---------------------------------------------------------------------------------------------------------------------------------------- 
    # Product.create(cpu:"I7-8550U, 4 nhân",ram:"16 GB",memory:"512 GB",vga:"Intel UHD Graphics 620 (Onboard)",front_camera:"",back_camera:"",
    #                 os:"Windows 10",bluetooth:"",screen:"13.3inch (3840 x 2160 pixels)",pin:"4 cell",
    #                 price:54999000,#images:"images/phone/423353_1;
    #                                 #    images/phone/423353_2;
    #                                 #    images/phone/423353_3",
    #                 weight:"1.23kg",category_id:1,producer_id:1,
    #                 status:"Dang ban",numofbuy:"1",name:"Dell XPS13 9370-415PX2 (I7-8550U) (Bạc)")
   
    # Product.create(cpu:"Intel® Core™ i7-6700HQ (Quad-Core, 6MB Cache, up to 3.5GHz w/ Turbo Boost)",ram:"8GB DDR4 at 2400MHz",memory:"1TB 7200RPM SATA 6Gb/s",vga:"NVIDIA® GeForce® GTX 1070 with 8GB GDDR5",front_camera:"",back_camera:"",
    #                 os:"Windows 10 Home 64bit English",bluetooth:"Webcam, Card Reader, HDMI, USB 3.0, LAN, Thunderbolt",screen:"17.3 inch FHD (1920 x 1080) IPS Anti-Glare 300-nits Display",pin:"Lithium Ion (99 Wh) Battery",
    #                 price:45999000,#images:"images/phone/423353_1;
    #                                 #    images/phone/423353_2;
    #                                 #    images/phone/423353_3",
    #                 weight:"3.7Kg",category_id:1,producer_id:1,
    #                 status:"Dang ban",numofbuy:"2",name:"Dell Alienware 17 R4")
    
    # Product.create(cpu:"8th Generation Intel® Core™ i7 _8550U Processor (1.80 GHz, 6M Cache, up to 4.00 GHz)",ram:"16GB LPDDR3 Bus 1866MHz",memory:"512GB SSD Sata Solid State Drive",vga:"Integrated Intel® UHD Graphics",front_camera:"",back_camera:"",
    #                 os:"Windows 10 Home SL 64bit + OFF365",bluetooth:"Killer 1435 802.11ac 2 x 2 and Bluetooth",screen:"13.3 inch 4K Ultra HD (3840 x 2160) InfinityEdge Touch Display",pin:"52 Whrs Battery",
    #                 price:49599000,#images:"images/phone/423353_1;
    #                                 #    images/phone/423353_2;
    #                                 #    images/phone/423353_3",
    #                 weight:"1.25Kg",category_id:1,producer_id:1,
    #                 status:"Dang ban",numofbuy:"4",name:"DELL Alienware 17")
    
    
    # Product.create(cpu:"Intel Core i5-6300U Processor (2 x 2.40GHz) - Max Turbo Frequency: 3.0GHz",ram:"8GB DDR3L Bus 1600 Mhz",memory:"256GB Solid State Drive",vga:"Intel® HD Graphics 520",front_camera:"",back_camera:"",
    #                 os:"Windows 10 Single Language",bluetooth:"Intel Advance- 8260AC , Bluetooth™ 4.0",screen:"13.3 inch UltraSharp™ QHD+ (3200 x 1800) IPS TOUCH (cảm ứng)",pin:"4 Cell Lithium-ion",
    #                 price:23000000,weight:"1.2Kg",category_id:1,producer_id:1,status:"Dang ban",numofbuy:"10",name:"Dell XPS 13")
    
    # Product.create(cpu:"Intel® Core™ i7-8850H (2.60GHz upto 4.30GHz, 6Cores, 12Threads, 9MB cache, FSB 8GT/s)",ram:" 32GB DDR4 2666MHz, 4 Slots, 
    #                   Max 64GB",memory:"512GB SSD M.2 PCIe3x4 NMve (Super Raid) + 1TB HDD 7200rpm",vga:"NVIDIA GeForce® GTX 1080 SLI 8GB GDDR5X",front_camera:"",back_camera:"",
    #                   os:"Windows 10 Home SL 64bit",bluetooth:"Killer Wireless-AC 1550 (2*2 a/c) + BT5",screen:"18.4-inch FHD (1920*1080), IPS-Level Anti-Glare",pin:"8-Cell 75Whr",           
    #                   price:134750000,status:"Dang ban",numofbuy:"10",name:"MSI GT83 8RG Titan 037VN")

    # Product.create(cpu:"Intel® Xeon® Processor E3-1505M (8M Cache, 2.80 GHz / Max Turbo Frequency: 3.7GHz) / Intel CM236 support super raid",ram:"32GB DDRIV 2133MHz",memory:"Super Raid 4 256GB SSD +1TB (SATA) 7200rpm",vga:"nVIDIA Quadro M5000M, 8GB GDDR5 / Intel® HD Graphics P530",front_camera:"",back_camera:"",
    #                   os:"Windows 10 Home SL 64bit",bluetooth:"Killer Wireless-AC 1550 (2*2 a/c) + BT5",screen:"17.3inch FHD, Anti-Glare (1920*1080) eDP Wide View Angle",pin:"8-Cell 75Whr",           
    #                   price:129999000,weight:"3.78Kg",category_id:1,producer_id:10,status:"Dang ban",numofbuy:"10",name:"MSI Workstation WT72 6QM")

    # Product.create(cpu:"Intel® Xeon® Processor E3-1505M (8M Cache, 2.80 GHz / Max Turbo Frequency: 3.7GHz) / Intel CM236 support super raid",ram:"32GB DDRIV 2133MHz",memory:"Super Raid 4 256GB SSD +1TB (SATA) 7200rpm",vga:"nVIDIA Quadro M5000M, 8GB GDDR5 / Intel® HD Graphics P530",front_camera:"",back_camera:"",
    #                   os:"Windows 10 Home SL 64bit",bluetooth:"Killer Wireless-AC 1550 (2*2 a/c) + BT5",screen:"17.3inch FHD, Anti-Glare (1920*1080) eDP Wide View Angle",pin:"8-Cell 75Whr",           
    #                   price:129999000,weight:"3.78Kg",category_id:1,producer_id:10,status:"Dang ban",numofbuy:"10",name:"MSI Workstation WT72 6QM")

    #2	
#  Product.create(cpu:"Intel® Core™ i3-7100U (2.4Ghz, 3M Cache, up to 2.40 GHz)",
# ram:"500 GB HDD 5400rpm Hard Drive Sata",
# memory:"500 GB HDD 5400rpm Hard Drive Sata",
# vga:"Intel® HD Graphics P530",
# front_camera:"",
# back_camera:"",
# os:"Windows 10 Home bản quyền",
# bluetooth:"Bluetooth 4.0",
# screen:"11.6 HD (1366x768) Anti-Glare LED Backlit Display",
# pin:"2 Cells",          
# price:12390000,
# weight:"1.39Kg",
# category_id:1,
# producer_id:6,
# status:"Dang ban",
# numofbuy:"10",
# name:"HP X360 11-ad026TU (2GV32PA)")


# #3	
# Product.create(cpu:"Intel® Core™ i7-8750H (2.20GHz upto 4.10GHz, 6Cores, 12Threads, 9MB cache, FSB 8GT/s)",
# ram:"8GB DDR4 Bus 2500MHz",
# memory:"128GB SSD M.2 PCIe3x4 NMVe + 1TB HDD 7200rpm",
# vga:"NVIDIA GeForce® GTX 1060 6GB GDDR5 + UHD Graphics 630",
# front_camera:"",
# back_camera:"",
# os:"Windows 10 Home bản quyền",
# bluetooth:"Bluetooth 4.0",
# screen:"17.3-inch FHD (1920*1080), 120Hz wideview 94%NTSC color Anti-Glare 3ms",
# pin:"6-Cell 51 Whr",          
# price:39000000,
# weight:"2.7Kg",
# category_id:1,
# producer_id:10,
# status:"Dang ban",
# numofbuy:"10",
# name:"MSI GP73 8RE-250VN Leopard")

# #4
# Product.create(
# cpu:"Intel® Core™ i7-7700HQ (2.8GHz upto 3.8GHz, 4Cores, 8Threads, 6MB cache)",
# ram:"8GB DDr4 Bus 2400Mhz",
# memory:"128GB SSD M.2 Sata + 1TB HDD 5400rpm Hard Drive Sata",
# vga:"NVIDIA GeForce GTX1060 6GB + HD Graphics 630",
# front_camera:"",
# back_camera:"",
# os:"Windows 10 bản quyền",
# bluetooth:"Bluetooth v4.1",
# screen:"",
# pin:"4 Cell 56 Whr, hỗ trợ ExpressCharge",          
# price:30390000,
# weight:"2.65 Kg",
# category_id:1,
# producer_id:1,
# status:"Dang ban",
# numofbuy:"10",
# name:"Dell Vostro 7570 70138566")

# #5	
# Product.create(
# cpu:"Intel® Core™ i7-7700HQ (2.8GHz upto 3.8GHz, 4Cores, 8Threads, 6MB cache)",
# ram:"16GB DDr4 Bus 2400Mhz",
# memory:"256GB SSD M.2 PCIe + 1TB HDD 7200rpm",
# vga:"NVIDIA GeForce GTX1050 4GB + HD Graphics 630",
# front_camera:"",
# back_camera:"",
# os:"WIN 10 Home",
# bluetooth:"Bluetooth v4.2",
# screen:"15.6inch FHD (1920x1080) IPS Anti-Glare LED-Backlit Display",
# pin:"4 Cell",          
# price:28800000,
# weight:"2.21kg",
# category_id:1,
# producer_id:6,
# status:"Dang ban",
# numofbuy:"10",
# name:"HP Pavilion Power 15 cb503TX 2LR98PA")

# #6	
# Product.create(
# cpu:" Intel® Celeron® N3350 (1.10GHz, 2M Cache, up to 2.4 GHz)",
# ram:"4GB DDR3L Bus 1600Mhz",
# memory:"500GB HDD 5400rpm Hard Drive Sata",
# vga:"HD Graphics 505",
# front_camera:"",
# back_camera:"",
# os:"Free Dos",
# bluetooth:"Bluetooth v4.2",
# screen:"15.6inch HD (1366x768) Anti-Glare LED Backlit Display",
# pin:"4 Cell",          
# price:6190000,
# weight:"2.00kg",
# category_id:1,
# producer_id:4,
# status:"Dang ban",
# numofbuy:"10",
# name:"Asus X541NA-GO008")

# #7
# Product.create(
# cpu:"Intel® Pentium® N4200 ( 1.10 GHz, 2MB Cache , up to 2.5 GHz )",
# ram:"4GB DDr4 Bus 2400Mhz",
# memory:"500GB HDD 5400rpm Hard Drive Sata",
# vga:"HD Graphics 505",
# front_camera:"",
# back_camera:"",
# os:"Free Dos",
# bluetooth:"Bluetooth 4.0",
# screen:"15.6inch HD (1366x768) Anti-Glare LED Backlit Display",
# pin:"2 Cell",          
# price:6890000,
# weight:"1.86kg",
# category_id:1,
# producer_id:2,
# status:"Dang ban",
# numofbuy:"10",
# name:"Acer Aspire A315-31-P66L")

# #8	
# Product.create(
# cpu:"Intel® Core™ i3-7130U ( 2.7GHZ , 3MB CaChe )",
# ram:"4GB DDr4 Bus 2400Mhz",
# memory:"1TB HDD 5400rpm Hard Drive Sata",
# vga:"HD Graphics 620 + NVIDIA Geforce GT940MX 2GB",
# front_camera:"",
# back_camera:"",
# os:"Free Dos",
# bluetooth:"Bluetooth 4.0",
# screen:"15.6inch FHD (1920x1080) Anti-Glare LED-Backlit Display",
# pin:"2 Cell- 42WHz",          
# price:10090000,
# weight:"1.94 Kg",
# category_id:1,
# producer_id:8,
# status:"Dang ban",
# numofbuy:"10",
# name:"Lenovo IdeaPad 320-15IKB")

# #9	
# Product.create(
# cpu:"Intel® Core™ i5-7200U (2.5GHz upto 3.1 GHz, 2Cores, 4Threads, 3MB Cache)",
# ram:"4GB DDr4 Bus 2133Mhz",
# memory:"1TB HDD 5400rpm Hard Drive Sata",
# vga:"HD Graphics 620",
# front_camera:"",
# back_camera:"",
# os:"Windows 10 bản quyền",
# bluetooth:"Bluetooth 4.0",
# screen:"15.6inch HD (1366x768) Anti Glare LED Backlit Display",
# pin:"3Cells 42 Whrs",          
# price:15290000,
# weight:"2.00kg",
# category_id:1,
# producer_id:1,
# status:"Dang ban",
# numofbuy:"10",
# name:"dell Vostro 7570 70138566")


# #10	
# Product.create(
# cpu:"Intel® Core™ i7-8550U (1.8GHz upto 4.0GHz, 4Cores, 8Threads, 8MB cache)",
# ram:"8GB LPDDR3 1866MHz (Onboard)",
# memory:"256Gb SSD M.2 Sata",
# vga:"NVIDIA GeForce GTX MX150 2GB + UHD Graphics 620",
# front_camera:"",
# back_camera:"",
# os:"Windows 10 bản quyền",
# bluetooth:"Bluetooth 4.0",
# screen:"14.1inch FHD (1920x1080) IPS Anti-Glare LED Backlit Display",
# pin:"3 Cell 50Whr",          
# price:25190000,
# weight:"1.25 Kg",
# category_id:1,
# producer_id:4,
# status:"Dang ban",
# numofbuy:"10",
# name:"ASUS UX430UN-GV097T")

# #11	
# Product.create(
# cpu:"Intel® Core™ i7-8750H (2.2GHz Up to 4.1 GHz, 6Cores, 12Threads, 9MB Cache)",
# ram:"8GB Ram DDR4 bus 2400Mhz",
# memory:"128 GB SSD M.2 Sata + 1TB HDD 5400rpm",
# vga:"NVIDIA® GeForce® GTX1050Ti 4GB GDDR5 + UHD Graphics 630",
# front_camera:"",
# back_camera:"",
# os:"Free Dos",
# bluetooth:"Bluetooth 4.2",
# screen:"15.6 FHD (1920x1080) IPS Anti-Glare LED-Backlit Display",
# pin:"3 Cells 48 Whrs ",          
# price:25600000,
# weight:"2.2 Kg",
# category_id:1,
# producer_id:2,
# status:"Dang ban",
# numofbuy:"10",
# name:"ACER Nitro 5 AN515-52-75FT")

# #12	
# Product.create(
# cpu:"Intel® Core™ i7-7700HQ (2.8GHz upto 3.8GHz, 4Cores, 8Threads, 6MB cache)",
# ram:"8GB DDr4 Bus 2400Mhz",
# memory:"128 GB SSD M.2 Sata + 500 GB HDD 5400rpm",
# vga:"NVIDIA GeForce GTX1050Ti 4GB + HD Graphics 630",
# front_camera:"",
# back_camera:"",
# os:"WIN 10 bản quyền",
# bluetooth:"Bluetooth 4.0,",
# screen:"15.6inch FHD (1920 x 1080) Anti Glare LED Backlit Display",
# pin:"6Cells ",          
# price:26590000,
# weight:"2.5kg",
# category_id:1,
# producer_id:1,
# status:"Dang ban",
# numofbuy:"10",
# name:"Dell Inspiron N7567A : i7-7700HQ")

# #13	
# Product.create(
# cpu:"Intel® Core™ i7-8750H (2.20GHz upto 4.10GHz, 6Cores, 12Threads, 9MB cache, FSB 8GT/s)",
# ram:"8GB DDR4 2666MHz, 2 Slots, Max 32GB",
# memory:"128GB SSD M.2 PCIe + 1TB HDD 7200rpm",
# vga:"NVIDIA GeForce GTX1060 3GB + HD Graphics 630",
# front_camera:"",
# back_camera:"",
# os:"Windows 10 Home bản quyền",
# bluetooth:" Bluetooth V4.1",
# screen:"15.6-inch FHD (1920*1080) Anti-Glare , 94% NTSC wide-view panel",
# pin:"6-Cell 41 Whr",          
# price:26490000,
# weight:"2.2 Kg",
# category_id:1,
# producer_id:10,
# status:"Dang ban",
# numofbuy:"10",
# name:"MSI GL63 8RC-265VN")

# #14	
# Product.create(
# cpu:"Intel® Core™ i7-7700HQ (2.8GHz upto 3.8GHz, 4Cores, 8Threads, 6MB cache)",
# ram:"8GB DDr4 Bus 2400Mhz",
# memory:"1TB HDD 5400rpm Hard Drive Sata (Support SSD M.2.Sata )",
# vga:"NVIDIA GeForce GTX1060 3GB + HD Graphics 630",
# front_camera:"",
# back_camera:"",
# os:"Windows 10 bản quyền",
# bluetooth:" Bluetooth V4.1",
# screen:"15.6inch FHD (1920x1080) IPS Anti-Glare LED Backlit Display",
# pin:"4 Cells 64 Whrs",          
# price:27900000,
# weight:"2.3 kg",
# category_id:1,
# producer_id:4,
# status:"Dang ban",
# numofbuy:"10",
# name:"Asus ROG Strix Hero GL503VM-GZ219T")

# #15	
# Product.create(
# cpu:"Intel® Core™ i7-7700HQ (2.80GHz, 6M Cache, up to 3.80 GHz)",
# ram:"8GB DDr4 Bus 2400Mhz ",
# memory:"128GB SSD M2 Sata + 1TB (1000GB) 5400rpm Hard Drive",
# vga:"NVIDIA® GeForce® GTX1060 6GB + HD Graphics 630",
# front_camera:"",
# back_camera:"",
# os:"free Dos",
# bluetooth:" Bluetooth V4.1",
# screen:"15.6inch FHD (1920x1080) IPS Anti-Glare LED-Backlit Display",
# pin:"4 Cell Battery (Integrated)",          
# price:30490000,
# weight:"2.7kg",
# category_id:1,
# producer_id:2,
# status:"Dang ban",
# numofbuy:"10",
# name:"Acer Predator Helios 300 G3-572-79S6")

# #16	
# Product.create(
# cpu:"Intel® Core™ I5-8250U Processor (1.6 GHz upto 3.4 GHz, cores 4 Threads 8 Cache 6Mb)",
# ram:"4GB DDr4 Bus 2400Mhz",
# memory:"1TB HDD 5400rpm Hard Drive Sata",
# vga:"UHD Graphics 630",
# front_camera:"",
# back_camera:"",
# os:"win 10 home single language",
# bluetooth:" Bluetooth V4.2",
# screen:"15.6 HD (1366x768) Anti-Glare LED Backlit Display",
# pin:"4 Cells",          
# price:13690000,
# weight:"2.18Kg",
# category_id:1,
# producer_id:1,
# status:"Dang ban",
# numofbuy:"10",
# name:"Dell Inspiron 35  76F")


Product.create(cpu:"Apple A10X 6 nhân 64-bit",ram:"4 GB",memory:"64 GB",vga:"Lightning",front_camera:"7 MP",back_camera:"12 MP",
    os:"iOS 10",bluetooth:"A2DP, 4.2",screen:"2224 x 1668 pixels",pin:"Lithium - Polymer",           
    price:19990000,weight:"477 g",category_id:3,producer_id:3,status:"Dang ban",numofbuy:"10",name:"Máy tính bảng iPad Pro 10.5 inch Wifi Cellular 64GB (2017)")
    

Product.create(cpu:"Apple A10 Fusion, 2.34 GHz",ram:"2 GB",memory:"32 GB",vga:"WiFi, 3G, 4G LTE",front_camera:"1.2 MP",back_camera:"8 MP",
    os:"iOS 11.3",bluetooth:"4.2, A2DP, LE, EDR",screen:"LED backlit LCD, 9.7",pin:"Lithium - Ion",           
    price:19990000,weight:"478 g",category_id:3,producer_id:3,status:"Dang ban",numofbuy:"10",name:"Máy tính bảng iPad Wifi Cellular 32GB (2018)")
    

Product.create(cpu:"Apple A8, 1.5 GHz",ram:"2 GB",memory:"128 GB",vga:"WiFi, Không hỗ trợ 3G, Không hỗ trợ 4G",front_camera:"1.2 MP",back_camera:"8 MP",
    os:"iOS 10",bluetooth:"4.2, A2DP, LE, EDR",screen:"LED backlit LCD, 9.7",pin:"Lithium - Ion",           
    price:10990000,weight:"478 g",category_id:3,producer_id:3,status:"Dang ban",numofbuy:"10",name:"Máy tính bảng iPad Mini 4 Wifi 128GB)")

Product.create(cpu:"Apple A9 2 nhân 64-bit, 1.84 GHz",ram:"2 GB",memory:"32 GB",vga:"WiFi, Không hỗ trợ 3G, Không hỗ trợ 4G",front_camera:"1.2 MP",back_camera:"8 MP",
   os:"iOS 10",bluetooth:"4.2, A2DP",screen:"IPS LCD",pin:"Lithium - Ion",           
   price:7990000,weight:"478 g",category_id:3,producer_id:3,status:"Dang ban",numofbuy:"10",name:"Máy tính bảng iPad Wifi 32GB (2017)")


Product.create(cpu:"Apple A9 2 nhân 64-bit, 1.84 GHz",ram:"2 GB",memory:"32 GB",vga:"WiFi, Không hỗ trợ 3G, Không hỗ trợ 4G",front_camera:"1.2 MP",back_camera:"8 MP",
   os:"iOS 10.3, upgradable to iOS 11.2",bluetooth:"4.2, A2DP",screen:"LED-backlit IPS LCD",pin:"Lithium - Ion",           
   price:8900000,weight:"469 g",category_id:3,producer_id:3,status:"Dang ban",numofbuy:"10",name:"Máy tính bảng Apple iPad 2017 Wifi 32GB-MP2F2TH/A (Xám)")

Product.create(cpu:"Apple A9 2 nhân 64-bit, 1.84 GHz",ram:"2 GB",memory:"32 GB",vga:"WiFi, Không hỗ trợ 3G, Không hỗ trợ 4G",front_camera:"1.2 MP",back_camera:"8 MP",
   os:"iOS 10.3, upgradable to iOS 11.2",bluetooth:"4.2, A2DP",screen:"LED-backlit IPS LCD",pin:"Lithium - Ion",           
   price:12190000 ,weight:"469 g",category_id:3,producer_id:3,status:"Dang ban",numofbuy:"10",name:"Máy tính bảng Apple iPad 2017 Wifi Cellular 32GB-MPG42TH/A (Vàng)")


Product.create(cpu:"Exynos 4 nhân 1.3Ghz",ram:"1.5GB",memory:"8GB",vga:"Wifi - Bluetooth - 3G",front_camera:"2MP",back_camera:"5MP",
    os:"Android",bluetooth:"Bluetooth v4.0",screen:"1280 x 800 pixels",pin:"SIM Micro",           
    price:4490000 ,weight:"477 g",category_id:3,producer_id:12,status:"Dang ban",numofbuy:"10",name:"Máy tính bảng Samsung (Galaxy Tab E)-SM-T561YZWAXXV (Trắng)")
    

Product.create(cpu:"Exynos 4 nhân 1.3Ghz",ram:"1.5GB",memory:"8GB",vga:"Wifi - Bluetooth - 3G",front_camera:"2MP",back_camera:"5MP",
    os:"Android 7.0",bluetooth:"Bluetooth v4.0",screen:"1280 x 800 pixels",pin:"SIM Micro",           
    price:5490000 ,weight:"477 g",category_id:3,producer_id:12,status:"Dang ban",numofbuy:"10",name:"Máy tính bảng Samsung (Galaxy Tab A 2017 8inch)-SM-T385 (Vàng)")
    
Product.create(cpu:"1.3Ghz",ram:"1.5GB",memory:"8GB",vga:"Hỗ trợ thẻ microSD lên đến 200GB",front_camera:"2MP",back_camera:"5MP",
    os:"Android 5.1",bluetooth:"Bluetooth v4.0",screen:"1280 x 800 pixels",pin:"4000mAh",           
    price:3590000 ,weight:"477 g",category_id:3,producer_id:12,status:"Dang ban",numofbuy:"10",name:"Máy tính bảng Samsung (Galaxy Tab A6 7inch)-SM-T285NZKAXXV (Đen)")
    

Product.create(cpu:"1.3Ghz",ram:"1.5GB",memory:"8GB",vga:"Hỗ trợ thẻ microSD lên đến 200GB",front_camera:"2MP",back_camera:"5MP",
    os:"Android 7.0",bluetooth:"Bluetooth v4.0",screen:"1280 x 800 pixels",pin:"4000mAh",           
    price:5490000  ,weight:"477 g",category_id:3,producer_id:12,status:"Dang ban",numofbuy:"10",name:"Máy tính bảng Samsung (Galaxy Tab A 2017 8)-SM-T385 (Đen)")
    

Product.create(cpu:"1.3Ghz",ram:"1.5GB",memory:"8GB",vga:"Hỗ trợ thẻ microSD lên đến 200GB",front_camera:"2MP",back_camera:"5MP",
    os:"Android 5.1",bluetooth:"Bluetooth v4.0",screen:"1280 x 800 pixels",pin:"4000mAh",           
    price:3590000  ,weight:"477 g",category_id:3,producer_id:12,status:"Dang ban",numofbuy:"10",name:"Máy tính bảng Samsung (Galaxy Tab A6 7inch)-SM-T285NZWAXXV (Trắng)")

Product.create(cpu:" Exynos 4 nhân 1.3Ghz",ram:"1.5GB",memory:"8GB",vga:"Hỗ trợ thẻ microSD lên đến 200GB",front_camera:"2MP",back_camera:"5MP",
    os:"Android 5.1",bluetooth:"Bluetooth v4.0",screen:"1280 x 800 pixels",pin:"4000mAh",           
    price:4490000  ,weight:"477 g",category_id:3,producer_id:12,status:"Dang ban",numofbuy:"10",name:"Máy tính bảng Samsung (Galaxy Tab E)-SM-T561YZKAXXV (Đen)")
    


Product.create(cpu:"",ram:"2GB",memory:"16GB",vga:"Micro USB",front_camera:"",back_camera:"",
    os:"Android 7.1",bluetooth:"4.0",screen:"8 inch HP IPS",pin:"(Nano + Micro) tích hợp khe cắm SD",           
    price:3990000  ,weight:"",category_id:3,producer_id:8,status:"Dang ban",numofbuy:"10",name:"Máy tính bảng Lenovo TB-8504X MSM8917-ZA2D0029VN (Trắng)")
    

Product.create(cpu:"",ram:"4GB ",memory:"32GB ",vga:"Wifi AC, Không hỗ trợ NFC, BT4.2",front_camera:"",back_camera:"",
    os:"Windows 10 Home SL 64bit",bluetooth:"4.2",screen:"HD (1280x800), 10.1 inch, IPS, TouchSreen",pin:"(Nano + Micro) tích hợp khe cắm SD",           
    price:6190000  ,weight:"",category_id:3,producer_id:8,status:"Dang ban",numofbuy:"10",name:"Máy tính bảng Lenovo Ideapad Miix 320 New-80XF00GHVN (Bạc)")
    

Product.create(cpu:"",ram:"2GB ",memory:"16GB ",vga:"Wifi AC, Không hỗ trợ NFC, BT4.2",front_camera:"",back_camera:"",
    os:"Android 7.1",bluetooth:"4.2",screen:"HD (1280x800), 10.1 inch, IPS, TouchSreen",pin:"4850mAh",           
    price:6190000  ,weight:"342 g",category_id:3,producer_id:8,status:"Dang ban",numofbuy:"10",name:"Máy tính bảng Lenovo TB-8504X MSM8917-ZA2D0065VN (Đen)")
    

Product.create(cpu:"",ram:"1GB ",memory:"16GB ",vga:"Micro USB",front_camera:"",back_camera:"",
    os:"Android 6.0 (Marshmallow)",bluetooth:"4.2",screen:"HD (1280x800), 10.1 inch, IPS, TouchSreen",pin:"4850mAh",           
    price:1899000   ,weight:"342 g",category_id:3,producer_id:8,status:"Dang ban",numofbuy:"10",name:"Máy tính bảng Lenovo TB3-730X MT8735P-ZA130063VN (Trắng)")
    

Product.create(cpu:"",ram:"1GB ",memory:"16GB ",vga:"Micro USB",front_camera:"2 MP",back_camera:"2 MP",
    os:"Android 6.0 (Marshmallow)",bluetooth:"4.2",screen:"IPS",pin:"3450 mAh",           
    price:2390000    ,weight:"342 g",category_id:3,producer_id:8,status:"Dang ban",numofbuy:"10",name:"Máy tính bảng Lenovo TB-7304x MT8735D-ZA330052VN (Đen)")
    

Product.create(cpu:"",ram:"1GB ",memory:"16GB ",vga:"Micro USB",front_camera:"2 MP",back_camera:"2 MP",
    os:"Windows 10 Home SL 64bit",bluetooth:"4.2",screen:"IPS",pin:"2 Cell",           
    price:4890000 ,weight:"342 g",category_id:3,producer_id:8,status:"Dang ban",numofbuy:"10",name:"Máy tính bảng Lenovo Ideapad Miix 320-80XF009XVN (Bạc)")

Product.create(cpu:"",ram:"2GB ",memory:"16GB ",vga:"wifi 802.11 b/g/n, 2 x micro sim 3G/2G, nguồn 5V-1.5A",front_camera:"2 MP",back_camera:"2 MP",
    os:"Adroid 6.0",bluetooth:"4.2",screen:"IPS",pin:"2 Cell",           
    price:2890000  ,weight:"342 g",category_id:3,producer_id:8,status:"Dang ban",numofbuy:"10",name:"Máy tính bảng Lenovo TB3-850M MT8735P-ZA180071VN (Trắng)")
