//
//  ViewController.swift
//  tapper
//
//  Created by Otto on 2/19/16.
//  Copyright © 2016 Otto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//Properties
    var maxTaps: Int = 0;
    var currentTaps = 0;
    
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    
    @IBAction func onCoinTap(sender: UIButton!){
        currentTaps++;
        updateTapsLbl();
        if isGameOver(){
            restarGame();
        }
    
    }
    @IBAction func onPlayBtnPressed(sender: UIButton!){
       
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            initialControlls();
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0;
            
            updateTapsLbl();
        }
    
    }
    
    func restarGame(){
        maxTaps = 0;
        howManyTapsTxt.text = "";
        newGameControls();
    }
    func initialControlls(){
        logoImg.hidden = true;
        playBtn.hidden = true;
        howManyTapsTxt.hidden = true;
        
        tapBtn.hidden = false;
        tapsLbl.hidden = false;
    }
    func newGameControls(){
        logoImg.hidden = false;
        playBtn.hidden = false;
        howManyTapsTxt.hidden = false;
        
        tapBtn.hidden = true;
        tapsLbl.hidden = true;
    }
    
    func isGameOver() -> Bool{
        if currentTaps >= maxTaps
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    func updateTapsLbl(){
        tapsLbl.text = "\(currentTaps ) Taps"
        
    }
    

}

