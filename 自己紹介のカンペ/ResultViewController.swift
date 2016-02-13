//
//  ResultViewController.swift
//  自己紹介のカンペ
//
//  Created by かっくん on 2016/01/16.
//  Copyright © 2016年 Kakkun. All rights reserved.
//

import UIKit
import Social
import MessageUI

class ResultViewController: UIViewController {
    
    var number: Int=0
    @IBOutlet var label:UILabel!
    @IBOutlet var label2:UILabel!
    var name: String!
    var barth: String!
    var syumi: String!
    var likefood: String!
    var type: String!
    var noEntry: NoEntry = NoEntry()
    var ngWord: [String]!
    
    override func viewDidAppear(animated: Bool) {
        
        ngWord = noEntry.str
        
        if((ngWord.indexOf(name)) != nil){
            print("ngWordあり")
            let alert = UIAlertController(title: "",
                message: "これは多くの他人が不快になる言葉です。直ちに変更をお願いいたします。",
                preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(
                UIAlertAction(
                    title: "OK",
                    style: UIAlertActionStyle.Default,
                    handler: {action in
                        self.dismissViewControllerAnimated(true, completion: nil)
                        //
                        //                        self.navigationController?.popViewControllerAnimated(true)
                    }
                )
            )
            
            
            presentViewController(alert, animated: true, completion: nil)
            
        }else{
            
            
        }
        
        if((ngWord.indexOf(barth)) != nil){
            print("ngWordあり")
            let alert = UIAlertController(title: "警告",
                message: "他人が不快になる言葉が入っています。変更してください。",
                preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(
                UIAlertAction(
                    title: "OK",
                    style: UIAlertActionStyle.Default,
                    handler: {action in
                        self.dismissViewControllerAnimated(true, completion: nil)
                        //
                        //                        self.navigationController?.popViewControllerAnimated(true)
                    }
                )
            )
            
            
            presentViewController(alert, animated: true, completion: nil)
            
        }else{
            
            
        }
        
        if((ngWord.indexOf(syumi)) != nil){
            print("ngWordあり")
            let alert = UIAlertController(title: "警告",
                message: "他人が不快になる言葉が入っています。変更してください。",
                preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(
                UIAlertAction(
                    title: "OK",
                    style: UIAlertActionStyle.Default,
                    handler: {action in
                        self.dismissViewControllerAnimated(true, completion: nil)
                        //
                        //                        self.navigationController?.popViewControllerAnimated(true)
                    }
                )
            )
            
            
            presentViewController(alert, animated: true, completion: nil)
            
        }else{
            
            
        }
        
        if((ngWord.indexOf(likefood)) != nil){
            print("ngWordあり")
            let alert = UIAlertController(title: "警告",
                message: "他人が不快になる言葉が入っています。変更してください。",
                preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(
                UIAlertAction(
                    title: "OK",
                    style: UIAlertActionStyle.Default,
                    handler: {action in
                        self.dismissViewControllerAnimated(true, completion: nil)
                        //
                        //                        self.navigationController?.popViewControllerAnimated(true)
                    }
                )
            )
            
            
            presentViewController(alert, animated: true, completion: nil)
            
        }else{
            
            
        }
        
        if((ngWord.indexOf(type)) != nil){
            print("ngWordあり")
            let alert = UIAlertController(title: "警告",
                message: "他人が不快になる言葉が入っています。変更してください。",
                preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(
                UIAlertAction(
                    title: "OK",
                    style: UIAlertActionStyle.Default,
                    handler: {action in
                        self.dismissViewControllerAnimated(true, completion: nil)
                        //
                        //                        self.navigationController?.popViewControllerAnimated(true)
                    }
                )
            )
            
            
            presentViewController(alert, animated: true, completion: nil)
            
        }else{
            
            
        }




        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("渡された値は...%d",number)

        if(name == ""){
            name = "（空欄）"
        }
        if(barth == ""){
            barth = "（空欄）"
        }
        if(syumi == ""){
            syumi = "（空欄）"
        }
        if(likefood == ""){
            likefood = "（空欄）"
        }
        if(type == ""){
            type = "（空欄）"
        }

        
        if number==9{
            label.text = String(format:"私は%@であります。誕生日は%@であります。趣味は%@で、好物は%@であります。%@と私では思いますが、よろしくお願い致します。",name,barth,syumi,likefood,type)
            
        }else if number>8{
            label.text = String(format:"おいどんは%@だぜ。誕生日は%@だぞ。趣味は%@で、好物は%@なんだ。%@とおいどんは思うけど、よろしく。",name,barth,syumi,likefood,type)
          
        }else if number>7{
            label.text = String(format:"俺は%@だ。誕生日は%@だ。趣味は%@で、好物は%@だ。%@と俺では思うが、よろしく頼む。",name,barth,syumi,likefood,type)

        }else if number>6{
            label.text = String(format:"私は%@よ。誕生日は%@よ。趣味は%@で、好物は%@よ。%@と私的には思うけど、よろしくね！",name,barth,syumi,likefood,type)
            
        }else if number>5{
            label.text = String(format:"ワタクシは%@ですわ。誕生日は%@ですのよ。趣味は%@で、好物は%@ですのよ。%@とアタクシは思うけど、よろしくですわー！",name,barth,syumi,likefood,type)
            
        }else if number>4{
            label.text = String(format:"僕は%@。誕生日は%@だよ。趣味は%@で、好物は%@なんだ。%@と僕は思うけど、よろしくね。",name,barth,syumi,likefood,type)
        }else if number>3{
            label.text = String(format:"それがしは%@でござる。誕生日は%@でござる。趣味は%@で、好物は%@なのでござる。%@とそれがしは思うが、よろしくでござる！",name,barth,syumi,likefood,type)
            
        }else if number>2{
            label.text = String(format:"あたしは%@！誕生日は%@だよ！趣味は%@で、好物は%@なんだ！%@とあたしは思うけど、よろしく！",name,barth,syumi,likefood,type)
            
        }else if number>1{
            label.text = String(format:"ワシは%@じゃ。誕生日は%@じゃ。趣味は%@で、好物は%@じゃぞ。%@とワシは思うが、よろしく頼むのう。",name,barth,syumi,likefood,type)

        }else {
            label.text = String(format:"私は%@です。誕生日は%@です。趣味は%@で、好物は%@です。%@と私は思いますが、よろしくお願い致します。",name,barth,syumi,likefood,type)
            
        }
        
        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func getRandomNumber(){
        number=Int(arc4random_uniform(10))
        NSLog("現しやがった乱数は...%dやけどなんかあっか？",number)
        
        if(name == ""){
            name = "（空欄）"
        }
        if(barth == ""){
            barth = "（空欄）"
        }
        if(syumi == ""){
            syumi = "（空欄）"
        }
        if(likefood == ""){
            likefood = "（空欄）"
        }
        if(type == ""){
            type = "（空欄）"
        }

        if number==9{
            label.text = String(format:"私は%@であります。誕生日は%@であります。趣味は%@で、好物は%@であります。%@と私では思いますが、よろしくお願い致します。",name,barth,syumi,likefood,type)
            
        }else if number>8{
            label.text = String(format:"おいどんは%@だぜ。誕生日は%@だぞ。趣味は%@で、好物は%@なんだ。%@とおいどんは思うけど、よろしく。",name,barth,syumi,likefood,type)
            
        }else if number>7{
            label.text = String(format:"俺は%@だ。誕生日は%@だ。趣味は%@で、好物は%@だ。%@と俺では思うが、よろしく頼む。",name,barth,syumi,likefood,type)
            
        }else if number>6{
            label.text = String(format:"私は%@よ。誕生日は%@よ。趣味は%@で、好物は%@よ。%@と私的には思うけど、よろしくね！",name,barth,syumi,likefood,type)
            
        }else if number>5{
            label.text = String(format:"ワタクシは%@ですわ。誕生日は%@ですのよ。趣味は%@で、好物は%@ですのよ。%@とアタクシは思うけど、よろしくですわー！",name,barth,syumi,likefood,type)
            
        }else if number>4{
            label.text = String(format:"僕は%@。誕生日は%@だよ。趣味は%@で、好物は%@なんだ。%@と僕は思うけど、よろしくね。",name,barth,syumi,likefood,type)
        }else if number>3{
            label.text = String(format:"それがしは%@でござる。誕生日は%@でござる。趣味は%@で、好物は%@なのでござる。%@とそれがしは思うが、よろしくでござる！",name,barth,syumi,likefood,type)
            
        }else if number>2{
            label.text = String(format:"あたしは%@！誕生日は%@だよ！趣味は%@で、好物は%@なんだ！%@とあたしは思うけど、よろしく！",name,barth,syumi,likefood,type)
            
        }else if number>1{
            label.text = String(format:"ワシは%@じゃ。誕生日は%@じゃ。趣味は%@で、好物は%@じゃぞ。%@とワシは思うが、よろしく頼むのう。",name,barth,syumi,likefood,type)
            
        }else {
            label.text = String(format:"私は%@です。誕生日は%@です。趣味は%@で、好物は%@です。%@と私は思いますが、よろしくお願い致します。",name,barth,syumi,likefood,type)
            
        }
        
        if(name == ""){
            name = "(空欄）"
        }else if(barth == ""){
            barth = "(空欄）"
        }else if(syumi == ""){
            syumi = "(空欄）"
        }else if(likefood == ""){
            likefood = "(空欄）"
        }else if(type == ""){
            type = "(空欄）"
        }
        
        label2.text = String("")
        
        

    }
    
    @IBAction func cp(){
        let board = UIPasteboard.generalPasteboard()
        board.setValue(self.label.text!, forPasteboardType: "public.text")
        
        label2.text = String("コピーしました")
    }
        
    @IBAction func selectBtn(sender: UIButton) {
        let alertController = UIAlertController(title: "出てきた文をシェアする!", message: "シェアしたいSNSを選んでください。", preferredStyle: .ActionSheet)
        let firstAction = UIAlertAction(title: "Twitter", style: .Default) {
            action in
            let text = self.label.text! + "「自己紹介のカンペ」ダウンロードしてね！ #自己紹介のカンペ https://itunes.apple.com/us/app/zi-ji-shao-jienokanpe/id1076095651?l=ja&ls=1&mt=8"
            
            let composeViewController: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)!
            composeViewController.setInitialText(text)
            
            self.presentViewController(composeViewController, animated: true, completion: nil)
        }
        let secondAction = UIAlertAction(title: "LINE", style: .Default) {
            action in
            let text: String! = self.label.text! + "「自己紹介のカンペ」ダウンロードしてね！ https://itunes.apple.com/us/app/zi-ji-shao-jienokanpe/id1076095651?l=ja&ls=1&mt=8"
            let encodeMessage: String! = text.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())
            let messageURL: NSURL! = NSURL( string: "line://msg/text/" + encodeMessage )
            if (UIApplication.sharedApplication().canOpenURL(messageURL)) {
                UIApplication.sharedApplication().openURL( messageURL )
            }
        }
        let cancelAction = UIAlertAction(title: "戻る", style: .Cancel) {
            action in
        }
        
        alertController.addAction(firstAction)
        alertController.addAction(secondAction)
        alertController.addAction(cancelAction)
        
        //For ipad And Univarsal Device
        alertController.popoverPresentationController?.sourceView = sender as UIView;
        alertController.popoverPresentationController?.sourceRect = CGRect(x: (sender.frame.width/2), y: sender.frame.height, width: 0, height: 0)
        alertController.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection.Up
        
        presentViewController(alertController, animated: true, completion: nil)
    }


    @IBAction func back(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
