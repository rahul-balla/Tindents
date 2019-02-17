//
//  settingsController.swift
//  Tindents
//
//  Created by Meriem Bounab on 2/6/19.
//  Copyright © 2019 Rahul Balla. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController {
    @IBOutlet var updateBtn: UIButton!
    var settingsArr = ["oncSwitchOn":0, "offcSwitchOn":0, "fsSwitchOn":0, "jsSwitchOn":0, "cheapSwitchOn":0, "medSwitchOn":0, "expensiveSwitchOn":0, "comSwitchOn":0, "csSwitchOn":0, "bioSwitchOn":0, "econSwitchOn":0, "chemSwitchOn":0, "englishSwitchOn":0, "physicsSwitchOn":0, "mathSwitchOn":0,]
    
    var oncSwitchOn = false;
    var offcSwitchOn = false;
    var fsSwitchOn = false;
    var jsSwitchOn = false;
    var cheapSwitchOn = false;
    var medSwitchOn = false;
    var expensiveSwitchOn = false;
    var comSwitchOn = false;
    var csSwitchOn = false;
    var bioSwitchOn = false;
    var econSwitchOn = false;
    var chemSwitchOn = false;
    var englishSwitchOn = false;
    var physicsSwitchOn = false;
    var mathSwitchOn = false;
    
    @IBAction func comSwitch(sender: UISwitch) {
        if(sender.isOn==true){
            comSwitchOn=true;
            settingsArr["comSwitch"] = 1
        }
        else{
            comSwitchOn=false;
            settingsArr["comSwitch"] = 0
        }
    }
    @IBAction func csSwitch(sender: UISwitch) {
        if(sender.isOn==true){
            csSwitchOn=true;
            settingsArr["csSwitch"] = 1
        }
        else{
            csSwitchOn=false;
            settingsArr["csSwitch"] = 0
        }
    }
    @IBAction func bioSwitch(sender: UISwitch) {
        if(sender.isOn==true){
            bioSwitchOn=true;
            settingsArr["bioSwitch"] = 1
        }
        else{
            bioSwitchOn=false;
            settingsArr["bioSwitch"] = 0
        }
    }
    @IBAction func econSwitch(sender: UISwitch) {
        if(sender.isOn==true){
            econSwitchOn=true;
            settingsArr["econSwitch"] = 1
        }
        else{
            econSwitchOn=false;
            settingsArr["econSwitch"] = 0
        }
    }
    @IBAction func chemSwitch(sender: UISwitch) {
        if(sender.isOn==true){
            chemSwitchOn=true;
            settingsArr["chemSwitch"] = 1
        }
        else{
            chemSwitchOn=false;
            settingsArr["chemSwitch"] = 0
        }
    }
    @IBAction func englishSwitch(sender: UISwitch) {
        if(sender.isOn==true){
            englishSwitchOn=true;
            settingsArr["englishSwitch"] = 1
        }
        else{
            englishSwitchOn=false;
            settingsArr["englishSwitch"] = 0
        }
    }
    @IBAction func physicsSwitch(sender: UISwitch) {
        if(sender.isOn==true){
            physicsSwitchOn=true;
            settingsArr["physicsSwitch"] = 1
        }
        else{
            physicsSwitchOn=false;
            settingsArr["physicsSwitch"] = 0
        }
    }
    @IBAction func mathSwitch(sender: UISwitch) {
        if(sender.isOn==true){
            mathSwitchOn=true;
            settingsArr["mathSwitch"] = 1
        }
        else{
            mathSwitchOn=false;
            settingsArr["mathSwitch"] = 0
        }
    }
    @IBAction func expensiveSwitch(sender: UISwitch) {
        if(sender.isOn==true){
            expensiveSwitchOn=true;
            settingsArr["expensiveSwitch"] = 1
        }
        else{
            expensiveSwitchOn=false;
            settingsArr["expensiveSwitch"] = 0
        }
    }
    @IBAction func medSwitch(sender: UISwitch) {
        if(sender.isOn==true){
            medSwitchOn=true;
            settingsArr["medSwitch"] = 1
        }
        else{
            medSwitchOn=false;
            settingsArr["medSwitch"] = 0
        }
    }
    @IBAction func cheapSwitch(sender: UISwitch) {
        if(sender.isOn==true){
            cheapSwitchOn=true;
            settingsArr["cheapSwitch"] = 1
        }
        else{
            cheapSwitchOn=false;
            settingsArr["cheapSwitch"] = 0
        }
    }
    @IBAction func jSSwitch(sender: UISwitch) {
        if(sender.isOn==true){
            jsSwitchOn=true;
            settingsArr["jSSwitch"] = 1
        }
        else{
            jsSwitchOn=false;
            settingsArr["jSSwitch"] = 0
        }
    }
    @IBAction func fSSwitch(sender: UISwitch) {
        if(sender.isOn==true){
            fsSwitchOn=true;
            settingsArr["fSSwitch"] = 1
        }
        else{
            fsSwitchOn=false;
            settingsArr["fSSwitch"] = 0
        }
    }
    @IBAction func offCSwitch(sender: UISwitch) {
        if(sender.isOn==true){
            offcSwitchOn=true;
            settingsArr["offCSwitch"] = 1
        }
        else{
            offcSwitchOn=false;
            settingsArr["offCSwitch"] = 0
        }
    }
    @IBAction func onCSwitch(sender: UISwitch) {
        if(sender.isOn==true){
            oncSwitchOn=true;
            settingsArr["onCSwitch"] = 1
        }
        else{
            oncSwitchOn=false;
            settingsArr["onCSwitch"] = 0
        }
    }
    
    @IBAction func updateBtnPressed(_ sender: Any) {
        requests().updateSettingsRequest(dict:settingsArr) { (response) in
            if let response = response {
                
                var success = response["success"] as? Int
                if success == 1 {
                    DispatchQueue.main.async {
                        self.performSegue(withIdentifier: "loginSuccess", sender: self)
                    }
                }
                
                //print(response)
                print("SUCCESS")
            } else {
                print("FAILURE")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
}


/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */
}
