//
//  SecondViewController.swift
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: - View Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Viewの設定
        self.setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Private & Internal Methods
    
    /// Viewの設定
    private func setupView() {
        self.view.backgroundColor = UIColor.blue
        
        // ボタンの設定
        self.setupButton()
    }
    
    /// ボタンの設定
    private func setupButton() {
        let closeButton = UIButton(frame: CGRect(x: 0.0,
                                                 y: 0.0,
                                                 width: 120.0,
                                                 height: 50.0))
        closeButton.backgroundColor = UIColor.red
        closeButton.setTitle("Close",
                             for: .normal)
        
        closeButton.layer.masksToBounds = true
        closeButton.layer.cornerRadius = 20.0
        closeButton.layer.position = CGPoint(x: self.view.bounds.width / 2,
                                             y: self.view.bounds.height - 50)
        
        closeButton.addTarget(self,
                              action: #selector(onCloseButtonTapped(sender:)),
                              for: .touchUpInside)
        
        self.view.addSubview(closeButton)
    }
    
    /// "Close"ボタンタップイベント
    internal func onCloseButtonTapped(sender: UIButton) {
        // 非表示
        self.dismiss(animated: true,
                     completion: nil)
    }
}
