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
import PKHUD
import AVFoundation

class ResultViewController: UIViewController, AVSpeechSynthesizerDelegate {
    
    var number: Int=0
    var number2: Int=0
    @IBOutlet var label:UILabel!
    @IBOutlet var label2:UILabel!
    var name: String!
    var barth: String!
    var barth2: String!
    var syumi: String!
    var likefood: String!
    var type: String!
    var noEntry: NoEntry = NoEntry()
    var ngWord: [String]!
    var talker = AVSpeechSynthesizer()
    @IBOutlet var button:UIButton!
    
    override func viewDidAppear(animated: Bool) {
        
        ngWord = noEntry.str
        
        if((ngWord.indexOf(name)) != nil){
            print("ngWordあり")
//            let alert = UIAlertController(title: "警告",
//                message: "これは多くの他人が不快になる言葉です。直ちに変更をお願いいたします。",
//                preferredStyle: UIAlertControllerStyle.Alert)
//            
//            alert.addAction(
//                UIAlertAction(
//                    title: "OK",
//                    style: UIAlertActionStyle.Default,
//                    handler: {action in
//                        self.dismissViewControllerAnimated(true, completion: nil)
//                        //
//                        //                        self.navigationController?.popViewControllerAnimated(true)
//                    }
//                )
//            )
//            
//            
//            presentViewController(alert, animated: true, completion: nil)
            
//            let alertView = SCLAlertView()
//            alertView.addButton("OK") {
//                self.dismissViewControllerAnimated(true, completion: nil)
//            }
//            
//            alertView.showError("画面を操作できません", subTitle: "使用できない単語があります。\n文章を変更してください。")
            
            number2=1
            
        }else{
            
            
        }
        
        if((ngWord.indexOf(syumi)) != nil){
            print("ngWordあり")
//            let alert = UIAlertController(title: "警告",
//                message: "これは多くの他人が不快になる言葉です。直ちに変更をお願いいたします。",
//                preferredStyle: UIAlertControllerStyle.Alert)
//            
//            alert.addAction(
//                UIAlertAction(
//                    title: "OK",
//                    style: UIAlertActionStyle.Default,
//                    handler: {action in
//                        self.dismissViewControllerAnimated(true, completion: nil)
//                        //
//                        //                        self.navigationController?.popViewControllerAnimated(true)
//                    }
//                )
//            )
//            
//            
//            presentViewController(alert, animated: true, completion: nil)
            
//            let alertView = SCLAlertView()
//            alertView.addButton("OK") {
//                self.dismissViewControllerAnimated(true, completion: nil)
//            }
//            
//            alertView.showError("画面を操作できません", subTitle: "使用できない単語があります。\n文章を変更してください。")
            
            number2=1
            
        }else{
            
            
        }

        if((ngWord.indexOf(likefood)) != nil){
            print("ngWordあり")
//            let alert = UIAlertController(title: "警告",
//                message: "これは多くの他人が不快になる言葉です。直ちに変更をお願いいたします。",
//                preferredStyle: UIAlertControllerStyle.Alert)
//            
//            alert.addAction(
//                UIAlertAction(
//                    title: "OK",
//                    style: UIAlertActionStyle.Default,
//                    handler: {action in
//                        self.dismissViewControllerAnimated(true, completion: nil)
//                        //
//                        //                        self.navigationController?.popViewControllerAnimated(true)
//                    }
//                )
//            )
//            
//            
//            presentViewController(alert, animated: true, completion: nil)
            
//            let alertView = SCLAlertView()
//            alertView.addButton("OK") {
//                self.dismissViewControllerAnimated(true, completion: nil)
//            }
//            
//            alertView.showError("画面を操作できません", subTitle: "使用できない単語があります。\n文章を変更してください。")
            
            number2=1
            
        }else{
            
            
        }
        
        if((ngWord.indexOf(type)) != nil){
            print("ngWordあり")
//            let alert = UIAlertController(title: "警告",
//                message: "これは多くの他人が不快になる言葉です。直ちに変更をお願いいたします。",
//                preferredStyle: UIAlertControllerStyle.Alert)
//            
//            alert.addAction(
//                UIAlertAction(
//                    title: "OK",
//                    style: UIAlertActionStyle.Default,
//                    handler: {action in
//                        self.dismissViewControllerAnimated(true, completion: nil)
//                        //
//                        //                        self.navigationController?.popViewControllerAnimated(true)
//                    }
//                )
//            )
//            
//            
//            presentViewController(alert, animated: true, completion: nil)
            
//            let alertView = SCLAlertView()
//            alertView.addButton("OK") {
//                self.dismissViewControllerAnimated(true, completion: nil)
//            }
//            
//            alertView.showError("画面を操作できません", subTitle: "使用できない単語があります。\n文章を変更してください。")
            
            number2=1
            
        }else{
            
            
        }
        
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("渡された値は...%dやけどなんかあっか？",number)

        if(name == ""){
            name = "（空欄）"
        }
        if(barth == ""){
            barth = "（空欄）"
        }
        if(barth2 == ""){
            barth2 = "（空欄）"
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

        if number>18{
            label.text = String(format:"私は%@であります。誕生日は%@月%@日であります。趣味は%@で、好物は%@であります。%@と私では思いますが、よろしくお願い致します。",name,barth,barth2,syumi,likefood,type)
            
        }else if number>17{
            label.text = String(format:"我こそは%@なり！誕生日は%@月%@日なのだ！趣味は%@、好物は%@だ！%@と我ながら思うが、よろしくぅ！！",name,barth,barth2,syumi,likefood,type)
            
        }else if number>16{
            label.text = String(format:"私は%@なのかー。誕生日は%@月%@日なのかー。趣味は%@で、好物は%@なのかー。%@と私は思うが、よろしくお願いなのかー。",name,barth,barth2,syumi,likefood,type)
            
        }else if number>15{
            label.text = String(format:"私は%@と申すものなのです。誕生日は%@月%@日なのです。趣味は%@で、好物は%@なのです。%@とは思いますが、よろしくお願いしますなのです。",name,barth,barth2,syumi,likefood,type)

            
        }else if number>14{
            label.text = String(format:"アタイは%@だよ！誕生日は%@月%@日だ！趣味は%@で、好物は%@なんだ！%@とアタイは思うが、よろしくぅ！",name,barth,barth2,syumi,likefood,type)
            
        }else if number>13{
            label.text = String(format:"うちは%@たい。誕生日は%@月%@日たい。趣味は%@で、好物は%@たい。%@っちうちは思おるっちゃけど、よろしゅうお願い致するけんね。",name,barth,barth2,syumi,likefood,type)
            
        }else if number>12{
            label.text = String(format:"わんわ%@さー。とぅしびーや%@月%@日さー。趣味や%@で、好物や%@さー。%@とわんわうむなますが、ゆたしくうにげぇ致さびら。",name,barth,barth2,syumi,likefood,type)
        
        }else if number>11{
            label.text = String(format:"うちは%@やで！誕生日は%@月%@日やで！趣味は%@で、好物は%@なんやで！%@とうちは思うけど、よろしくな！",name,barth,barth2,syumi,likefood,type)
            
        }else if number>10{
            label.text = String(format:"おいらは%@だよ！誕生日は%@月%@日だよ！趣味は%@で、好物は%@なんだ！%@とおいらは思うけど、よろしく！",name,barth,barth2,syumi,likefood,type)
            
        }else if number>9{
            label.text = String(format:"ワタシは%@だよぉ！誕生日は%@月%@日だよぉ！趣味は%@で、好物は%@なんだぁ！%@とワタシは思うけど、よろしくねぇ！",name,barth,barth2,syumi,likefood,type)
        
        }else if number>8{
            label.text = String(format:"おいどんは%@だぜ。誕生日は%@月%@日だぞ。趣味は%@で、好物は%@なんだ。%@とおいどんは思うけど、よろしく。",name,barth,barth2,syumi,likefood,type)
          
        }else if number>7{
            label.text = String(format:"俺は%@だ。誕生日は%@月%@日だ。趣味は%@で、好物は%@だ。%@と俺では思うが、よろしく頼む。",name,barth,barth2,syumi,likefood,type)

        }else if number>6{
            label.text = String(format:"私は%@よ。誕生日は%@月%@日よ。趣味は%@で、好物は%@よ。%@と私的には思うけど、よろしくね！",name,barth,barth2,syumi,likefood,type)
            
        }else if number>5{
            label.text = String(format:"ワタクシは%@ですわ。誕生日は%@月%@日ですのよ。趣味は%@で、好物は%@ですのよ。%@とアタクシは思うけど、よろしくですわー！",name,barth,barth2,syumi,likefood,type)
            
        }else if number>4{
            label.text = String(format:"僕は%@。誕生日は%@月%@日だよ。趣味は%@で、好物は%@なんだ。%@と僕は思うけど、よろしくね。",name,barth,barth2,syumi,likefood,type)
            
        }else if number>3{
            label.text = String(format:"それがしは%@でござる。誕生日は%@月%@日でござる。趣味は%@で、好物は%@なのでござる。%@とそれがしは思うが、よろしくでござる！",name,barth,barth2,syumi,likefood,type)
            
        }else if number>2{
            label.text = String(format:"あたしは%@！誕生日は%@月%@日だよ！趣味は%@で、好物は%@なんだ！%@とあたしは思うけど、よろしく！",name,barth,barth2,syumi,likefood,type)
            
        }else if number>1{
            label.text = String(format:"ワシは%@じゃ。誕生日は%@月%@日じゃ。趣味は%@で、好物は%@じゃぞ。%@とワシは思うが、よろしく頼むのう。",name,barth,barth2,syumi,likefood,type)

        }else {
            label.text = String(format:"私は%@です。誕生日は%@月%@日です。趣味は%@で、好物は%@です。%@と私は思いますが、よろしくお願い致します。",name,barth,barth2,syumi,likefood,type)
            
        }
        
        // Do any additional setup after loading the view.
        
        self.talker.delegate = self
        
        button.setImage(UIImage(named: "icon_154431_48"), forState: UIControlState.Normal)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func getRandomNumber(){
        number=Int(arc4random_uniform(20))
        NSLog("現しやがった乱数は...%dやけどなんかあっか？",number)
        
        if(name == ""){
            name = "（空欄）"
        }
        if(barth == ""){
            barth = "（空欄）"
        }
        if(barth2 == ""){
            barth2 = "（空欄）"
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

        if number>18{
            label.text = String(format:"私は%@であります。誕生日は%@月%@日であります。趣味は%@で、好物は%@であります。%@と私では思いますが、よろしくお願い致します。",name,barth,barth2,syumi,likefood,type)
            
        }else if number>17{
            label.text = String(format:"我こそは%@なり！誕生日は%@月%@日なのだ！趣味は%@、好物は%@だ！%@と我ながら思うが、よろしくぅ！！",name,barth,barth2,syumi,likefood,type)
            
        }else if number>16{
            label.text = String(format:"私は%@なのかー。誕生日は%@月%@日なのかー。趣味は%@で、好物は%@なのかー。%@と私は思うが、よろしくお願いなのかー。",name,barth,barth2,syumi,likefood,type)
            
        }else if number>15{
            label.text = String(format:"私は%@と申すものなのです。誕生日は%@月%@日なのです。趣味は%@で、好物は%@なのです。%@とは思いますが、よろしくお願いしますなのです。",name,barth,barth2,syumi,likefood,type)
            
            
        }else if number>14{
            label.text = String(format:"アタイは%@だよ！誕生日は%@月%@日だ！趣味は%@で、好物は%@なんだ！%@とアタイは思うが、よろしくぅ！",name,barth,barth2,syumi,likefood,type)
            
        }else if number>13{
            label.text = String(format:"うちは%@たい。誕生日は%@月%@日たい。趣味は%@で、好物は%@たい。%@っちうちは思おるっちゃけど、よろしゅうお願い致するけんね。",name,barth,barth2,syumi,likefood,type)
            
        }else if number>12{
            label.text = String(format:"わんわ%@さー。とぅしびーや%@月%@日さー。趣味や%@で、好物や%@さー。%@とわんわうむなますが、ゆたしくうにげぇ致さびら。",name,barth,barth2,syumi,likefood,type)
            
        }else if number>11{
            label.text = String(format:"うちは%@やで！誕生日は%@月%@日やで！趣味は%@で、好物は%@なんやで！%@とうちは思うけど、よろしくな！",name,barth,barth2,syumi,likefood,type)
            
        }else if number>10{
            label.text = String(format:"おいらは%@だよ！誕生日は%@月%@日だよ！趣味は%@で、好物は%@なんだ！%@とおいらは思うけど、よろしく！",name,barth,barth2,syumi,likefood,type)
            
        }else if number>9{
            label.text = String(format:"ワタシは%@だよぉ！誕生日は%@月%@日だよぉ！趣味は%@で、好物は%@なんだぁ！%@とワタシは思うけど、よろしくねぇ！",name,barth,barth2,syumi,likefood,type)
            
        }else if number>8{
            label.text = String(format:"おいどんは%@だぜ。誕生日は%@月%@日だぞ。趣味は%@で、好物は%@なんだ。%@とおいどんは思うけど、よろしく。",name,barth,barth2,syumi,likefood,type)
            
        }else if number>7{
            label.text = String(format:"俺は%@だ。誕生日は%@月%@日だ。趣味は%@で、好物は%@だ。%@と俺では思うが、よろしく頼む。",name,barth,barth2,syumi,likefood,type)
            
        }else if number>6{
            label.text = String(format:"私は%@よ。誕生日は%@月%@日よ。趣味は%@で、好物は%@よ。%@と私的には思うけど、よろしくね！",name,barth,barth2,syumi,likefood,type)
            
        }else if number>5{
            label.text = String(format:"ワタクシは%@ですわ。誕生日は%@月%@日ですのよ。趣味は%@で、好物は%@ですのよ。%@とアタクシは思うけど、よろしくですわー！",name,barth,barth2,syumi,likefood,type)
            
        }else if number>4{
            label.text = String(format:"僕は%@。誕生日は%@月%@日だよ。趣味は%@で、好物は%@なんだ。%@と僕は思うけど、よろしくね。",name,barth,barth2,syumi,likefood,type)
            
        }else if number>3{
            label.text = String(format:"それがしは%@でござる。誕生日は%@月%@日でござる。趣味は%@で、好物は%@なのでござる。%@とそれがしは思うが、よろしくでござる！",name,barth,barth2,syumi,likefood,type)
            
        }else if number>2{
            label.text = String(format:"あたしは%@！誕生日は%@月%@日だよ！趣味は%@で、好物は%@なんだ！%@とあたしは思うけど、よろしく！",name,barth,barth2,syumi,likefood,type)
            
        }else if number>1{
            label.text = String(format:"ワシは%@じゃ。誕生日は%@月%@日じゃ。趣味は%@で、好物は%@じゃぞ。%@とワシは思うが、よろしく頼むのう。",name,barth,barth2,syumi,likefood,type)
            
        }else {
            label.text = String(format:"私は%@です。誕生日は%@月%@日です。趣味は%@で、好物は%@です。%@と私は思いますが、よろしくお願い致します。",name,barth,barth2,syumi,likefood,type)
        }
        
        if(name == ""){
            name = "(空欄）"
        }else if(barth == ""){
            barth = "(空欄）"
        }else if(barth2 == ""){
            barth2 = "(空欄）"
        }else if(syumi == ""){
            syumi = "(空欄）"
        }else if(likefood == ""){
            likefood = "(空欄）"
        }else if(type == ""){
            type = "(空欄）"
        }
        
        label2.text = String("")
        
        if talker.speaking {
            talker.stopSpeakingAtBoundary(.Immediate)
            button.setImage(UIImage(named: "icon_154431_48"), forState: UIControlState.Normal)
            print("もう読み上げ投げたぜい")
        }


    }
    
    @IBAction func cp(){
        if number2 == 1{
            let alertView = SCLAlertView()
            alertView.addButton("OK") {
                self.dismissViewControllerAnimated(true, completion: nil)
            }
            
            alertView.showError("コピーできません", subTitle: "不適切な単語が含まれています。\n文章を変更してから\nもう一度お試しください。")
        }else{
        let board = UIPasteboard.generalPasteboard()
        board.setValue(self.label.text!, forPasteboardType: "public.text")
//        
//        let dialog: UIAlertController = UIAlertController(title: "コピーしました。", message: "", preferredStyle: .Alert)
//        self.presentViewController(dialog, animated: true) { () -> Void in
//            let delay = 0.9 * Double(NSEC_PER_SEC)
//            let time  = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
//            dispatch_after(time, dispatch_get_main_queue(), {
//                self.dismissViewControllerAnimated(true, completion: nil)
//            })
//        }
        
        PKHUD.sharedHUD.contentView = PKHUDSuccessView()
        
        PKHUD.sharedHUD.show()
        
        PKHUD.sharedHUD.hide(afterDelay: 0.5)
        }

    }
        
    @IBAction func selectBtn(sender: UIButton) {
        
        let alertView = SCLAlertView()
        if number2 == 1{
            let alertView = SCLAlertView()
            alertView.addButton("OK") {
                self.dismissViewControllerAnimated(true, completion: nil)
            }
            
            alertView.showError("シェアできません", subTitle: "不適切な単語が含まれています。\n文章を変更してから\nもう一度お試しください。")
        }else{
        alertView.addButton("Twitter") {
            let text = self.label.text! + "「自己紹介のカンペ」ダウンロードしてね！ #自己紹介のカンペ https://itunes.apple.com/us/app/zi-ji-shao-jienokanpe/id1076095651?l=ja&ls=1&mt=8"
            
            let composeViewController: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)!
            composeViewController.setInitialText(text)
            
            self.presentViewController(composeViewController, animated: true, completion: nil)
        }
        alertView.addButton("LINE"){
            let text: String! = self.label.text! + "「自己紹介のカンペ」ダウンロードしてね！ https://itunes.apple.com/us/app/zi-ji-shao-jienokanpe/id1076095651?l=ja&ls=1&mt=8"
            let encodeMessage: String! = text.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())
            let messageURL: NSURL! = NSURL( string: "line://msg/text/" + encodeMessage )
            if (UIApplication.sharedApplication().canOpenURL(messageURL)) {
                UIApplication.sharedApplication().openURL( messageURL )
                NSLog("LINE入ってるぜえ")
            }else {
                NSLog("LINEねえのかよつまんねえな")
                let alertView = SCLAlertView()
                alertView.addButton("OK") {
                }
                alertView.showError("シェアできません", subTitle: "LINEがインストール\nされていません。")
            }
        }
        alertView.addButton("もどる"){
        }
        alertView.showNotice("シェアで自己紹介!", subTitle: "SNSをえらんでください!")
        }
        
//        let alertController = UIAlertController(title: "出てきた文をシェアする!", message: "シェアしたいSNSを選んでください。", preferredStyle: .ActionSheet)
//        let firstAction = UIAlertAction(title: "Twitter", style: .Default) {
//            action in
//            let text = self.label.text! + "「自己紹介のカンペ」ダウンロードしてね！ #自己紹介のカンペ https://itunes.apple.com/us/app/zi-ji-shao-jienokanpe/id1076095651?l=ja&ls=1&mt=8"
//            
//            let composeViewController: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)!
//            composeViewController.setInitialText(text)
//            
//            self.presentViewController(composeViewController, animated: true, completion: nil)
//        }
//        let secondAction = UIAlertAction(title: "LINE", style: .Default) {
//            action in
//            let text: String! = self.label.text! + "「自己紹介のカンペ」ダウンロードしてね！ https://itunes.apple.com/us/app/zi-ji-shao-jienokanpe/id1076095651?l=ja&ls=1&mt=8"
//            let encodeMessage: String! = text.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())
//            let messageURL: NSURL! = NSURL( string: "line://msg/text/" + encodeMessage )
//            if (UIApplication.sharedApplication().canOpenURL(messageURL)) {
//                UIApplication.sharedApplication().openURL( messageURL )
//                NSLog("LINE入ってるぜえ")
//            }else {
//                NSLog("LINEねえのかよつまんねえな")
//                let alertController = UIAlertController(title: "シェアできません", message: "LINEがインストールされていません。", preferredStyle: .Alert)
//                
//                let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
//                alertController.addAction(defaultAction)
//                
//                self.presentViewController(alertController, animated: true, completion: nil)
//                let alertView = SCLAlertView()
//                alertView.addButton("OK") {
//                }
//                alertView.showError("シェアできません", subTitle: "LINEがインストール\nされていません。")
//            }
//        }
//        
//        let cancelAction = UIAlertAction(title: "戻る", style: .Cancel) {
//            action in
//        }
//
//        alertController.addAction(firstAction)
//        alertController.addAction(secondAction)
//        alertController.addAction(cancelAction)
//        
//        //For ipad And Univarsal Device
//        alertController.popoverPresentationController?.sourceView = sender as UIView;
//        alertController.popoverPresentationController?.sourceRect = CGRect(x: (sender.frame.width/2), y: sender.frame.height, width: 0, height: 0)
//        alertController.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection.Up
//        
//        presentViewController(alertController, animated: true, completion: nil)
        }


    @IBAction func back(){
        self.dismissViewControllerAnimated(true, completion: nil)
        self.talker.stopSpeakingAtBoundary(.Immediate)
    }
    
    @IBAction func didTapButton(sender: UIButton){
        if number2 == 1{
            let alertView = SCLAlertView()
            alertView.addButton("OK") {
                self.dismissViewControllerAnimated(true, completion: nil)
            }
            
            alertView.showError("読み上げできません", subTitle: "不適切な単語が含まれています。\n文章を変更してから\nもう一度お試しください。")
        }else{
        if talker.speaking {
            self.talker.stopSpeakingAtBoundary(.Immediate)
            
            button.setImage(UIImage(named: "icon_154431_48"), forState: UIControlState.Normal)
            
        }else{
            
        button.setImage(UIImage(named: "icon_154521_48"), forState: UIControlState.Normal)

        let utterance = AVSpeechUtterance(string:self.label.text!)

        utterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")
        
        utterance.pitchMultiplier = 1.2

        self.talker.speakUtterance(utterance)
        }
        }
        
    }
    
    func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didFinishSpeechUtterance utterance: AVSpeechUtterance)
    {
        print("もう読み上げ投げたよん")
        self.talker.stopSpeakingAtBoundary(.Immediate)
        button.setImage(UIImage(named: "icon_154431_48"), forState: UIControlState.Normal)
    }
    
    @IBAction func tit(){
        self.talker.stopSpeakingAtBoundary(.Immediate)
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
