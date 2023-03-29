//
//  ViewController.swift
//  CookieFactory_TDD
//
//  Created by Gbenga Abayomi on 29/03/2023.
//


//iOS Code Testing

//Test-Driven Development and Behavior-Driven Development with Swift Abhishek Mishra

import UIKit

class ViewController: UIViewController {
    
    var cookiejar:CookieController?
    @IBOutlet weak var totalCookies: UILabel!
    @IBOutlet weak var gingerbreadCookies: UILabel!
    @IBOutlet weak var shortbreadCookies: UILabel!
    @IBOutlet weak var chocolateChipCookies: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cookiejar = CookieController()
        refreshUI()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onGenerateGingerbreadCookies(_ sender: Any) {
        cookiejar?.addGingerbreadCookie()
        refreshUI()
    }
    @IBAction func onGenerateChocolateChipCookies(_ sender: Any) {
        cookiejar?.addChocolateChipCookie()
        refreshUI()
    }
    @IBAction func onGenerateShortbreadCookies(_ sender: Any) {
        cookiejar?.addShortbreadCookie()
        refreshUI()
    }
    
    @IBAction func onClearAllCookies(_ sender: Any) {
        cookiejar?.reset()
        refreshUI()
    }
    private func refreshUI() -> Void {
        let totalGinger = cookiejar!.gingerbreadCookies!.count
        let totalShort = cookiejar!.shortbreadCookies!.count
        let totalChocolate = cookiejar!.chocolateChipCookies!.count
        let total = totalGinger + totalShort + totalChocolate
        gingerbreadCookies.text = "Gingerbread cookies: \(totalGinger)"
        shortbreadCookies.text = "Shortbread cookies: \(totalShort)"
        chocolateChipCookies.text = "Chocolate chip cookies: \(totalChocolate)"
        totalCookies.text = "Total cookies: \(total)"
    }
    
    
}

