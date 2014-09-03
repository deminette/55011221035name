class food{
    let key:String
    let value:String
    var Vegetable:[String:String]=["VG":"Veggie","CR":"Carrot","MT":"Muttei"]
    var Stage:[String:String]=["Stage1":"Seed","Stage2":"Sprout","Stage3":"Prima"]
    init(key:String,value:String){
        self.key=key
        self.value=value
            }
    
    func addVeg(){
        self.Vegetable
        Vegetable[key]=value
    }
    
    func removeVeg(){
        self.Vegetable
        Vegetable.removeValueForKey(key)
    }
    func growthUpdate(){
        self.Vegetable
        for keyV in Vegetable{
            
        }
    }
    
}
let addfood1 = food(key:"RT",value:"Roolsta")
addfood1.addVeg()

let revfood1 = food(key:"VG", value: "Veggie")
revfood1.removeVeg()
