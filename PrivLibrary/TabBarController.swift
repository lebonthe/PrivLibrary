//
//  TabBarController.swift
//  PrivLibrary
//
//  Created by Min Hu on 2024/2/19.
//

import UIKit

class TabBarController: UITabBarController {
    // 設定自訂的 button
    let centralButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setButton()
        setTabBarAppearence()
    }
    // 設定 centralButton
    func setButton() {
        // 設定大小為 tabBar
        centralButton.frame.size = CGSize(width: 114, height: tabBar.bounds.height * 0.5)
        // 設定位置在 tabBar 正中央
        centralButton.center = CGPoint(x: tabBar.bounds.midX, y: tabBar.bounds.midY)
        // 設定背景色
        centralButton.backgroundColor = Colors.chiliRed
        // 設定邊框弧度
        centralButton.layer.cornerRadius = 13
        // 設定文字
        centralButton.setTitle("Add A Book", for: .normal)
        // 設定普通情況下的文字顏色
        centralButton.setTitleColor(Colors.lavenderBlush, for: .normal)
        // 裁剪掉弧線邊框外的內容
        centralButton.clipsToBounds = true
        // 設定點擊 centralButton 觸發的動作，調用 showAddingBookViewController 方法
        centralButton.addTarget(self, action: #selector(showAddingBookViewController), for: .touchDown)
        // 將 centralButton 添加到 tabBar 內
        tabBar.addSubview(centralButton)
    }
    // 設定 Tab Bar Item 的位置
    func setTabBarAppearence() {
        tabBar.standardAppearance.stackedItemPositioning = .centered
        tabBar.standardAppearance.stackedItemSpacing = tabBar.bounds.width * 0.45
    }
    // 顯示 showAddingBookViewController 的方法
    @objc func showAddingBookViewController() {
        // 創建一個 AddingBookViewController 實例
        let addingBookViewController = AddingBookViewController()
        // 設定轉場樣式
        addingBookViewController.modalTransitionStyle = .flipHorizontal
        // 設定 ViewController 的格式
        addingBookViewController.modalPresentationStyle = .pageSheet
        // 呈現 addingBookViewController
        present(addingBookViewController, animated: true, completion: nil)
    }
}
