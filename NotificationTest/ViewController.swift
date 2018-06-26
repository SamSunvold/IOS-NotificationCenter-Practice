//
//  ViewController.swift
//  NotificationTest
//
//  Created by Sam on 6/19/18.
//  Copyright © 2018 Sam. All rights reserved.
//

import UIKit
import NotificationCenter

let notificationKey = "My Notification Key"

class ViewController: UIViewController {
    
    //https://www.andrewcbancroft.com/2014/10/08/fundamentals-of-nsnotificationcenter-in-swift/
    
    @IBOutlet weak var notificationMessageText: UITextField!
    @IBOutlet weak var notificationRecievedText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("updateConfirmationText"), name: notificationKey, object: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //*************************************************************************
    //I believe error is occuring here but I didn't have time to try and solve.
    //*************************************************************************
    @IBAction func sendnotification(sender: AnyObject) {
        NSNotificationCenter.defaultCenter().postNotificationName(notificationKey, object: self, userInfo: ["Notification Message": "Notification Sent!"])
        
    }
    
    
    func updateConfirmationText(notification: NSNotification)
    {
        //var dictionary = notification.dictionaryWithValuesForKeys(["Notification Message"])
        notificationMessageText.text =  "test" //(dictionary["Notification Message"] as! String)
    }
    
    func updateNotificationRecievedText()
    {
        notificationRecievedText.text = "Recieved"
    }

}


