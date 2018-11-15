//
//  BookVO.swift
//  TV-CV
//
//  Created by Zaw Zin Phyo on 11/9/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import Foundation
class Book{
    var image : String
    var title : String
    var author : String
    var description : String
    var releasedDate : String
    

    init(image: String, title: String, author: String, description: String, releasedDate: String) {
        self.image = image
        self.title = title
        self.author = author
        self.description = description
        self.releasedDate = releasedDate
    }
}

let booksList = [
    Book(image: "BookOne", title: "Working With PLC (Programmable Logic Controller)", author: "သက်ဝင်းစိုး (Hyper Learning Hub)", description: "လုပ်ငန်းခွင်သုံး PLC Instructions များကို နမူနာ Code များနှင့်တကွ ရှင်းလင်းရေးသားထားသော စာအုပ်ဖြစ်သည်။", releasedDate: "2,Feb 2000"),
    Book(image: "BookTwo", title: "ကလေးငယ်များနှင့် နည်းပညာရိုက်ခတ်မှု", author: "ကလျာအိအိလွင်", description: "ကလေးများအပေါ် Facebook အပါအဝင် လူမှုကွန်ယက်များ၊ အင်တာနက်နည်းပညာများ၏ ရိုက်ခတ်မှု၊ ကလေးများ Screen ကြည့်ချိန် လျှော့ချ ထိန်းချုပ်နိုင်သည့် နည်းလမ်းများ၊ ကလေးငယ်များနှင့် အင်တာနက်လုံခြုံမှု၊ ဆိုက်ဘာလုံခြုံရေး အစရှိသည်တို့ကို အခန်း (၁၁) ခန်းခွဲ၍ ရေးသားရှင်းလင်းထားသော စာအုပ်ဖြစ်သည်။ သုံးတတ်လျှင် ဆေး၊ မသုံးတတ်လျှင် ဘေးဖြစ်နိုင်သည့် အင်တာနက်ကို ကလေးများ မှန်ကန်စွာ အသုံးချနိုင်အောင် မိဘများအနေဖြင့် မည်သို့ထိန်းကျောင်းပေးနိုင်ပုံကို စာအုပ်မှတဆင့် လေ့လာသိရှိနိုင်ကြမည် ဖြစ်သည်။", releasedDate: "23, Nov 2016"),
    Book(image: "BookThree", title: "လူတိုင်းအတွက် ယနေ့ခေတ် ပြည်သူ့နီတိမျာ", author: "ထွန်းမြတ်ချို", description: "ပြည်သူတစ်ဦးအနေဖြင့် မိမိနိုင်ငံ၊ မိမိမြို့ရွာ၊ မိမိလမ်း၊ မိမိဝန်းကျင်တွင် ဆောင်ရန်နှင့် ရှောင်ရန် အပြုအမူများ၊ ကျင့်သုံးရန် စည်းမျဉ်းစည်းကမ်းများ၊ လုပ်ဆောင်ရန်နှင့် ကူညီဖေးမရန်တာဝန်များ စသည်ဖြင့် မိမိတို့လောက သာယာပျော်ရွှင်ဖွယ်ဖြစ်ရေး ပြည်သူ့နီတိများကို အခန်းများခွဲ၍ ဖော်ပြပေးထားသော စာအုပ်ဖြစ်သည်။", releasedDate: "2, Oct 2018"),
    Book(image: "BookFour", title: "အဆုတ်ကင်ဆာ", author: "ဒေါက်တာခင်မောင်လွင် (FAME)", description: "အမျိုးသားများတွင် နံပါတ် (၁) အဖြစ်အများဆုံး၊ အမျိုးသမီးများတွင် နံပါတ် (၃) အဖြစ်အများဆုံးဖြစ်သည့် အဆုတ်ကင်ဆာအကြောင်းကို အသေးစိတ် ရေးသားရှင်းလင်းထားသော စာအုပ်ဖြစ်သည်။ အဆုတ်ကင်ဆာ ဖြစ်ရခြင်းအကြောင်းရင်း၊ ရောဂါလက္ခဏာ၊ စမ်းသပ်စစ်ဆေးပုံ၊ ကုထုံးအစရှိသည်တို့ကို အခန်း (၇) ခန်းခွဲ၍ ရေးသားရှင်းလင်းထားသည်။", releasedDate: "1, Oct 2018"),
    Book(image: "BookFive", title: "ကျွန်တော်ရေးသော ကျန်းမာရေးစာစုများ", author: "ဒေါက်တာဖြိုးမောင်", description: "လက်တွေ့အသုံးချ ဆေးပညာရပ်နှင့် ပတ်သက်၍ စာရေးသူရေးသားခဲ့သည့် ဆောင်းပါး (၄၅) ပုဒ် စုစည်းမှုစာအုပ်ဖြစ်သည်။", releasedDate: "22, Sep 2018"),
    Book(image: "BookSix", title: "ပြည်သူ့ဒေဝီနှင့် အာဏာရှင်ဗိုလ်ချုပ်ကြီးများ", author: "ပြည်သူ့ဒေဝီနှင့် အာဏာရှင်ဗိုလ်ချုပ်ကြီးများ", description: """
Peter Popham ရေးသားသည့် Aung San Suu Kyi (The Lady and The Generals and Burma's Struggle for Freedom) စာအုပ်ကို ဘာသာပြန်ဆိုထားခြင်း ဖြစ်သည်။ ၈၈ အရေးအခင်းကာလ မြန်မာ့နိုင်ငံရေးနယ်ပယ်သို့ ဒေါ်အောင်ဆန်းစုကြည် ဝင်ရောက်လာချိန်မှ စ,တင်ကာ ၂၀၁၂ ခုနှစ် နေအိမ်အကျယ်ချုပ်မှ ဒေါ်အောင်ဆန်းစုကြည် လွတ်မြောက်ချိန်အထိ စစ်အာဏာရှင်တို့နှင့် သူမကြား ပဋိပက္ခဖြစ်ခဲ့ပွားမှုများ၊ မြန်မာနိုင်ငံရေးအခင်းအကျင်း၊ စစ်အာဏာရှင်တို့ ကြိုတင်အကွက်ချ ရေးဆွဲခဲ့သော ၂၀၀၈ ဖွဲ့စည်းပုံ သမိုင်းကြောင်း၊ စစ်အစိုးရနှင့် နိုင်ငံတကာဆက်ဆံရေး၊ နိုင်ငံတကာ ဖိအားပေးမှုများ အစရှိသည်တို့ကို ဤစာအုပ်တွင် အသေးစိတ် မှတ်တမ်းတင် ရေးသားထားသည်။
""", releasedDate: "6, March 2018"),
    Book(image: "BookSeven", title: "ရာမညဒေသ ကျိုက္ကသာမြို့ဟောင်း သုတေသနခရီး", author: "ဦးစံဝင်း (သမိုင်းသုတေသန)", description: "သုဝဏ္ဏဘူမိသမိုင်းကို လေ့လာသော ပုဂ္ဂိုလ်များနှင့် ရှေးဟောင်းသုတေသနကို စိတ်ဝင်စားသူများအတွက် ရေးသားထားသော စာအုပ်ဖြစ်သည်။ သထုံမြို့ဟောင်းကဲ့သို့ ကြီးမားသောမြို့ဟောင်းတစ်ခုဖြစ်သော ကျိုက္ကသာမြို့ဟောင်းကို ကိုယ်တိုင်ကွင်းဆင်းလေ့လာကာ ဆောင်းပါး (၃၈) ပုဒ်ခွဲ၍ ရေးသားမျှဝေထားခြင်း ဖြစ်သည်။", releasedDate: "3, Jan 2018"),
    Book(image: "BookEight", title: "အိမ်မွေးကြောင်များကို ပြုစုစောင့်ရှောက်ခြင်း", author: "ဒေါက်တာခင်စန်းမော်", description: "ကြောင်ချစ်သူများအတွက် ယခုစာအုပ်တွင် ကြောင်အမျိုးအစားများ၊ ကြောင်၏ ထူးခြားသော စရိုက်သဘာဝများ၊ တောကြောင်များ၊ ကြောင်၏ အာရုံခံမှုများ၊ ကြောင်များနှင့် ကလေးများ၊ ပုံမှန် ကျန်းမာရေးစစ်ဆေးခြင်း၊ အစာကျွေးခြင်း၊ ကြောင်များကို အညစ်အကြေးစွန့်ရန် လေ့ကျင့်ပေးခြင်း၊ သန့်ရှင်းသပ်ရပ်အောင် ပြုလုပ်ပေးခြင်း၊ ကြောင်များနှင့် ရောဂါဝေဒနာ၊ ဘေးအန္တရာယ်မဖြစ်အောင် ထိန်းသိမ်းစောင့်ရှောက်ခြင်း၊ သားစပ်ခြင်း၊ ကြောင်ကလေးများအား ပြုစုစောင့်ရှောက်ခြင်း၊ ကျန်းမာရေးထိန်းသိမ်းခြင်း၊ ကပ်ပါးကောင်များ၊ မကျန်းမာသော အခြေအနေများ၊ ဝမ်းပျက်ခြင်းအကြောင်းတို့ကို အသေးစိတ် ရှင်းလင်းရေးသားထားသည်။ စနစ်တကျ ကြောင်မွေးမြူနည်းနှင့်တကွ ကြောင်မွေးမြူရာတွင် သိထားရမည့် ကျန်းမာရေးဗဟုသုတများ၊ အဖြစ်များရောဂါများ၊ ကြောင်တို့၏ ဓလေ့စရိုက်များကို တစ်အုပ်တည်းတွင် ပြည့်ပြည့်စုံစုံ သိရှိကြရမည်ဖြစ်သည်။", releasedDate: "23, Dec 2009"),
    Book(image: "BookNine", title: "Great Boss ဖြစ်ရန်နည်းလမ်းများ", author: "သိန်းဟန် - ၁", description: "Best Seller စာရင်းဝင် Jeffery J.Fox ရေးသားသည့် How to Become A Great Boss စာအုပ်ကို ဘာသာပြန်ဆိုထားသော စာအုပ်ဖြစ်သည်။ အဖွဲ့အစည်းတစ်ခု၏ ကံကြမ္မာနှင့် အနာဂတ် ချမ်းသာကြွယ်ဝခြင်းအတွက် မဟာဗျူဟာမြောက် တာဝန်ရှိသူ CEO ဖြစ်လိုသူတိုင်း သိရှိထားရမည့် စီမံခန့်ခွဲမှုရေးရာများနှင့် လိုက်နာဆောင်ရွက်ဖွယ်ရာများကို အခန်း (၅၀) ခန်းခွဲ၍ ရေးသားရှင်းလင်းထားသော စာအုပ်ဖြစ်သည်။", releasedDate: "18, Feb 2016"),
    Book(image: "BookTen", title: "ရက်သတ္တပတ် MBA", author: "အောင်စည်သာ", description: "ရည်မှန်းချက်နှင့် ပန်းတိုင်ကို မည်သို့ပေါင်းစပ်ပုံ၊ စီးပွားရေးလုပ်ငန်းကြီးတစ်ခု၏ စနစ်ကို ပြောင်းလဲပုံ၊ တိုးထက်ထိရောက်အောင် လုပ်ဆောင်ပုံများကို ရက်သတ္တပတ်၏ တစ်နေ့ချင်းစီအလိုက် သင်ခန်းစာများအဖြစ် ပို့ချပေးထားခြင်း ဖြစ်သည်။ Alan Finn ရေးသားသည့် MBA In A Week စာအုပ်ကို ဘာသာပြန်ဆိုထားခြင်း ဖြစ်သည်။", releasedDate: "8, July 2018")
]
