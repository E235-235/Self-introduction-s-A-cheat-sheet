//
//  ViewController.swift
//  自己紹介のカンペ
//
//  Created by かっくん on 2016/01/05.
//  Copyright © 2016年 Kakkun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var number: Int!
    @IBOutlet var name: UITextField!
    @IBOutlet var barth: UITextField!
    @IBOutlet var barth2: UITextField!
    @IBOutlet var syumi: UITextField!
    @IBOutlet var likefood: UITextField!
    @IBOutlet var type: UITextField!
    @IBOutlet weak var sc: UIScrollView!
    var txtActiveField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        name.delegate = self
        barth.delegate = self
        barth2.delegate = self
        syumi.delegate = self
        likefood.delegate = self
        type.delegate = self
        let _singleTap = UITapGestureRecognizer(target: self, action: "onTap:");
        _singleTap.numberOfTapsRequired = 1;
        view.addGestureRecognizer(_singleTap);
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "textFieldDidChange:",
            name: UITextFieldTextDidChangeNotification,
            object: barth)
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "textFieldDidChange:",
            name: UITextFieldTextDidChangeNotification,
            object: barth2)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        txtActiveField = textField
        return true
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let notificationCenter = NSNotificationCenter.defaultCenter()
        notificationCenter.addObserver(self, selector: "handleKeyboardWillShowNotification:", name: UIKeyboardWillShowNotification, object: nil)
        notificationCenter.addObserver(self, selector: "handleKeyboardWillHideNotification:", name: UIKeyboardWillHideNotification, object: nil)
    }
    
    func handleKeyboardWillShowNotification(notification: NSNotification) {
        
        let userInfo = notification.userInfo!
        let keyboardScreenEndFrame = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue()
        let myBoundSize: CGSize = UIScreen.mainScreen().bounds.size
        let txtLimit = txtActiveField.frame.origin.y + txtActiveField.frame.height + 8.0
        let kbdLimit = myBoundSize.height - keyboardScreenEndFrame.size.height
        
    
        
        if txtLimit >= kbdLimit {
            sc.contentOffset.y = txtLimit - kbdLimit
        }
    }
    
    func handleKeyboardWillHideNotification(notification: NSNotification) {
        sc.contentOffset.y = 0
    }
    

    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func onTap (recognizer:UIPanGestureRecognizer){
        name.resignFirstResponder();
        barth.resignFirstResponder();
        barth2.resignFirstResponder();
        syumi.resignFirstResponder();
        likefood.resignFirstResponder();
        type.resignFirstResponder();
    }
    
    @IBAction func tapScreen(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    @IBAction func back(){
        if(name.text! == "" && barth.text! == "" && barth2.text! == "" && syumi.text! == "" && likefood.text! == "" && type.text! == ""){
            self.dismissViewControllerAnimated(true, completion: nil)
        }else{

//            let alert = UIAlertController(title: "入力内容は失われます。",
//                message: "本当にもどりますか？",
//                preferredStyle: UIAlertControllerStyle.Alert)
//            
//            alert.addAction(
//                UIAlertAction(
//                    title: "OK",
//                    style: UIAlertActionStyle.Default,
//                    handler: {action in
//                        self.dismissViewControllerAnimated(true, completion: nil)
//                        
//                        self.navigationController?.popViewControllerAnimated(true)
//                    }
//                )
//        )
//    
//    let cancelAction:UIAlertAction = UIAlertAction(title: "キャンセル",
//        style: UIAlertActionStyle.Cancel,
//        handler:{
//            (action:UIAlertAction!) -> Void in
//            print("Cancel")
//    })
//    
//    
//    alert.addAction(cancelAction)
//    
//    
//    
//    presentViewController(alert, animated: true, completion: nil)
//        }
            let alertView = SCLAlertView()
            alertView.addButton("OK") {
                self.dismissViewControllerAnimated(true, completion: nil)
            }
            alertView.addButton("キャンセル"){
            }
            alertView.showWarning("入力内容は失われます", subTitle: "本当にもどりますか？")
        }
}

    @IBAction func getRandomNumber(){
        number=Int(arc4random_uniform(20))
        NSLog("現しやがった乱数は...%dやけどなんかあっか？",number)
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    // 2
    func textFieldDidChange(notification: NSNotification) {
        let barth = notification.object as! UITextField
        let barth2 = notification.object as! UITextField
        if let text = barth.text {
            // 3
            if text.characters.count > 2 {
                barth.text = text.substringToIndex(text.startIndex.advancedBy(2))
            }
        }
        if let text = barth2.text {
            // 3
            if text.characters.count > 2 {
                barth2.text = text.substringToIndex(text.startIndex.advancedBy(2))
            }
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let resultViewController = segue.destinationViewController as! ResultViewController
        
        resultViewController.number=self.number
        resultViewController.name=self.name.text
        resultViewController.barth=self.barth.text
        resultViewController.barth2=self.barth2.text
        resultViewController.syumi=self.syumi.text
        resultViewController.likefood=self.likefood.text
        resultViewController.type=self.type.text
    }
}



