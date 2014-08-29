//1
func returnPossibleTips() -> [Int: Double]{
    
    let possibleTipsInferred=[0.15,0.18,0.20]
    let possibleTipsExplicit:[Double]=[0.15,0.18,0.20]
   
    //2
    var retval = Dictionary<Int, Double>()
    for possibleTips in possibleTipsInferred{
        let intPCt= Int(possibleTips*100)
        //3
        retval[intPCt] = calcTipWithPct(possibleTips)
    }
    return retval
}
