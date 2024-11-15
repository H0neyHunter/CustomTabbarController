//
//  ViewController2.swift
//  CustomTabbarController
//
//  Created by Ümit Örs on 14.11.2024.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("didload: " + String(describing: ViewController2.self))
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("didappear: " + String(describing: ViewController2.self))
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("willappear: " + String(describing: ViewController2.self))
    }
    override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
        print("isappearing: " + String(describing: ViewController2.self))
    }
    override func endAppearanceTransition() {
        super.endAppearanceTransition()
        print("endappeartransition: " + String(describing: ViewController2.self))
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
