
import UIKit
import XCPlayground

let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))

XCPlaygroundPage.currentPage.liveView = containerView

struct DiceProperty {
    let width: CGFloat
    let height: CGFloat
    
}


struct DiceGroup {
    var diceProperty: DiceProperty
    var group: [Int]
    
    init(diceProperty: DiceProperty, group: [Int] ){
        self.diceProperty = diceProperty
        self.group = group
    }
}

class Dice : UIView {
    let dieValue: Int
    let containerView: UIView
    
    init(containerView: UIView, dieValue: Int){
        
        self.dieValue = dieValue
        self.containerView = containerView
        
        super.init(frame: CGRect(x: 0.0, y: 0.0, width: 100, height: 100))
        self.backgroundColor = UIColor.whiteColor()
        self.center = containerView.center
        self.layer.cornerRadius = 7.0
        
        switch(dieValue)
        {
        case 1:
            let spot1 = UIView(frame: CGRect(x: 0.0, y: 0.0, width:8.0, height:8.0))
            spot1.center = self.center
            spot1.layer.cornerRadius = 4.0
            spot1.backgroundColor = UIColor.blackColor()
            self.insertSubview(spot1, atIndex: 0)
        default:
            print("fail")
        }
        
       
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
let dice = Dice(containerView: containerView, dieValue: 1)
containerView.addSubview(dice)

/*

let dice = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0))
dice.center = containerView.center
dice.layer.cornerRadius = 5.0

dice.backgroundColor = UIColor.whiteColor()

//
//class DieSpot : UIView {
//    init(cornerRadius: CGFloat, backgroundColor: UIColor){
//       
//        
//        self.layer.cornerRadius = cornerRadius
//        self.backgroundColor = backgroundColor
//        
//        super.init(frame: <#T##CGRect#>)
//    }
//    
//    required init(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }
//}
//let spot1 = UIView(frame: CGRect(x: 0.0, y: 0.0, width:8.0, height:8.0))
//spot1.center = dice.center
//spot1.layer.cornerRadius = 4.0
//spot1.backgroundColor = UIColor.blackColor()

let spot1 = UIView(frame: CGRect(x:dice.frame.size.width/6.0, y: dice.frame.size.height/7.0, width:15.0, height:15.0))

spot1.layer.cornerRadius = 7.5
spot1.backgroundColor = UIColor.blackColor()


let spot2 = UIView(frame: CGRect(x:dice.frame.size.width/6.0, y: dice.frame.size.height/2.5, width:15.0, height:15.0))

spot2.layer.cornerRadius = 7.5
spot2.backgroundColor = UIColor.blackColor()


let spot3 = UIView(frame: CGRect(x:dice.frame.size.width/6.0, y: dice.frame.size.height/1.5, width:15.0, height:15.0))

spot3.layer.cornerRadius = 7.5
spot3.backgroundColor = UIColor.blackColor()




let spot7 = UIView(frame: CGRect(x:dice.frame.size.width/1.5, y: dice.frame.size.height/1.5, width:20.0, height:20.0))
spot7.layer.cornerRadius = 10.0
spot7.backgroundColor = UIColor.blackColor()


dice.addSubview(spot7)
dice.addSubview(spot3)
dice.addSubview(spot2)
dice.addSubview(spot1)
containerView.addSubview(dice)
*/

//
//UIView.animateWithDuration(2.0, animations: { () -> Void in
//
//    
//    let rotationTransform = CGAffineTransformMakeRotation(3.14)
//    
//    die.transform = rotationTransform
//})
