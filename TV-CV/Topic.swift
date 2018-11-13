//
//  topicVO.swift
//  TV-CV
//
//  Created by Zaw Zin Phyo on 11/9/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import Foundation
class Topic {
    var image : String
    var title : String
    var description : String
    
    init(image: String, title: String, description: String) {
        self.image = image
        self.title = title
        self.description = description
    }
}

let ads = Topic(image: "book-1", title: "Little Star", description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).")

let topics = [
    Topic(image: "TopicOne", title: "ရေပေါ်တွင် ခြေတံရှည် အိမ်များဖြင့် ကျေးရွာတည်ထားသည့် ကျောက္ကာရွာအား မြိတ်ကျွန်းစု ခရီးစဉ်အသစ်အဖြစ် ယခုနှစ်အတွင်း ထည့်သွင်းရေးဆွဲမည်", description: """
ရေပေါ်တွင် ခြေတံရှည်အိမ်များဖြင့် ကျေးရွာတည်ထားသည့် ကျောက္ကာတံငါရွာ သို့ ယခုနှစ်တွင် မြိတ်ကျွန်းစုခရီးစဉ်အသစ်အဖြစ် ထည့်သွင်းရေးဆွဲကာ ခရီးသည်များအား ပို့ဆောင်ပေးသွားမည်ဖြစ်ကြောင်း မြိတ်ခရိုင် ခရီးသွားလုပ်ငန်းရှင်များအသင်းမှ တာဝန်ရှိသူများက ပြောကြားသည်။
    
        မြိတ်ခရိုင် ပုလောမြို့နယ်အတွင်း ပါဝင်သည့် ကျောက္ကာကျေးရွာမှာ တံငါလုပ်ငန်းများဖြင့် အဓိကအသက်မွေးဝမ်းကျောင်းပြုပြီး ပင်လယ်အတွင်းရှိ ရေလယ်ကျွန်း ပတ်ပတ်လည်တွင် ခြေတံရှည်အိမ်များကို ရေပေါ်တွင် တည်ဆောက်ထားသည့် ကျေးရွာတစ်ရွာဖြစ်ကြောင်း သိရသည်။ ကျွန်းခရီးစဉ်များအပြင် စိတ်ဝင်စားဖွယ် ခရီးစဉ်အသစ်များ ရေးဆွဲရာတွင် တံငါသည်များ နေထိုင်မှု ပုံစံများကိုပါ လေ့လာနိုင်မည့် ကျောက္ကာ ကျေးရွာကို ခရီးစဉ်အသစ်အဖြစ် ထည့်သွင်းသွားမည်ဖြစ်ကြောင်း သိရသည်။
"""),
    Topic(image: "TopicTwo", title: "စက်ဘီးပြင်သည့် အဘိုးအို (သို့မဟုတ်) သိန်းတစ်သောင်းဆုရှင် ဘစိန်ထွန်း", description: """
အသက် ၇၄ နှစ်ရှိနေပြီဖြစ်သည့် ဘစိန်ထွန်း၏နှုတ်မှ ဖွင့်အန်ကျလာသည့် စကားလုံးများက သူ့ဘဝ၊ သူ့အတိတ်၊ သူဖြတ်သန်းလာခဲ့သည့် အချိန်ကာလများဆီသို့ ပြန်လည်ထင်ဟပ်မြင်ယောင်လာစေခဲ့သည်။
“ရှင်ပြုပေးချင်တယ်။ ပိုက်ဆံလိုက်ချေးတယ်။ ချေးလို့မရခဲ့ဘူး။ မျက်ရည်သာ ကျခဲ့ရပါတယ်။ ဒါကတော့ ကျွန်တော့် ကံဇာတာ မကောင်းတာပါ။ ကိုယ့်သားသမီးလေးတွေကို ရှင်ပြုပေးချင်တယ်။ ပိုက်ဆံရှာမရတော့  ပြုခွင့်မရခဲ့ဘူး” ဟု ဘစိန်ထွန်းတစ်ယောက်သူ၏ အတိတ်ကာလမှ ဖြစ်ခွင့်မရခဲ့သည့် ဆန္ဒများအကြောင်း ပြောပြနေခဲ့သည်။ ထိုသို့ ပြောပြနေစဉ် ဘစိန်ထွန်း၏ အသံများ တိမ်ဝင်နေခဲ့သည်။ မျက်ဝန်းမှ မျက်ရည်စများကလည်း ဖြစ်ချင်လွန်းပြီး ဖြစ်ခွင့်မရခဲ့ရသည့် ဘစိန်ထွန်း၏ ဆန္ဒများနောက်ကွယ်မှ နာကျင်မှုအတိုင်းအတာ မည်ရွေ့မည်မျှ ရှိနေမည်ကို ရိုးရိုးလေး သက်သေပြနေခြင်းလည်း ဖြစ်ပေလိမ့်မည်။
""")
]
