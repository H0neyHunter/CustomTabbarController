//
//  ViewController.swift
//  CustomTabbarController
//
//  Created by Ümit Örs on 14.11.2024.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate {
    @IBOutlet weak var tabbar: UITabBar!
    @IBOutlet weak var tcView: UIView!
    
    private var firstVC : ViewController1? = nil
    private var secondVC : ViewController2? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabbar.delegate = self
        tabbar.backgroundColor = .orange
        
        firstVC = self.storyboard?.instantiateViewController(identifier: "ViewController1") as? ViewController1
        secondVC = self.storyboard?.instantiateViewController(identifier: "ViewController2") as? ViewController2
        
        firstOpen()
        
        
    }
    private func firstOpen(){
        tabbar.selectedItem = tabbar.items?.first
        guard let firstVC = self.firstVC else { return }
        handlerController(controller: firstVC)
    }
    private func handlerController(controller: UIViewController) {
        for child in children {
            child.view.removeFromSuperview()
            child.removeFromParent()
        }
        
        addChild(controller)
        tcView.addSubview(controller.view)
        
        // Auto Layout kuralları
        controller.view.translatesAutoresizingMaskIntoConstraints = false
        controller.view.topAnchor.constraint(equalTo: tcView.topAnchor).isActive = true
        controller.view.bottomAnchor.constraint(equalTo: tcView.bottomAnchor).isActive = true
        controller.view.leadingAnchor.constraint(equalTo: tcView.leadingAnchor).isActive = true
        controller.view.trailingAnchor.constraint(equalTo: tcView.trailingAnchor).isActive = true
        
        controller.didMove(toParent: self)  // Bu satır önemli, view controller geçişini tamamlar
    }
    
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if let index = tabBar.items?.firstIndex(of: item) {
            switch index {
            case 0:
                guard let firstVC = self.firstVC else { return }
                handlerController(controller: firstVC)
            case 1:
                guard let secondVC = self.secondVC else { return }
                handlerController(controller: secondVC)
            default:
                break
            }
        }
    }
}
