//
//  ViewController2.swift
//  SwiftSideMenu
//
//  Created by Evgeny on 01.02.15.
//  Copyright (c) 2015 Evgeny Nazarov. All rights reserved.
//



import UIKit

class TriviaViewController: UIViewController, ENSideMenuDelegate {
    
    var color = UIColor(red: 0.234375, green: 0.74609375, blue: 0.6640625, alpha: 1.0)
    var color_fondo_navbar = UIColor(red: (10/255), green: (20/255), blue: (38/255), alpha: 1.0)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Cambiar Color
        self.navigationController?.navigationBar.tintColor = color
        self.navigationController?.navigationBar.barTintColor = color_fondo_navbar
        
        //Poner imagen como titulo
        let logo = UIImage(named: "titulo_be_part_of")
        let imageView = UIImageView (image: logo)
        self.navigationItem.titleView = imageView
        
        self.sideMenuController()?.sideMenu?.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func toggleSideMenu(sender: AnyObject) {
        
        toggleSideMenuView()
        
    }
    /*@IBAction func toggleSideMenu(sender: AnyObject) {
    toggleSideMenuView()
    }*/
    
    // MARK: - ENSideMenu Delegate
    func sideMenuWillOpen() {
        print("sideMenuWillOpen")
    }
    
    func sideMenuWillClose() {
        print("sideMenuWillClose")
    }
    
    func sideMenuShouldOpenSideMenu() -> Bool {
        print("sideMenuShouldOpenSideMenu")
        return true
    }
    
    func sideMenuDidClose() {
        print("sideMenuDidClose")
    }
    
    func sideMenuDidOpen() {
        print("sideMenuDidOpen")
    }
}