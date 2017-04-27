//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - View Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
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
        self.view.backgroundColor = UIColor.green
        
        // ボタンの設定
        self.setupButton()
    }
    
    /// ボタンの設定
    private func setupButton() {
        let openButton = UIButton(frame: CGRect(x: 0.0,
                                                y: 0.0,
                                                width: 120.0,
                                                height: 50.0))
        openButton.backgroundColor = UIColor.red
        openButton.setTitle("Open",
                            for: .normal)
        
        openButton.layer.masksToBounds = true
        openButton.layer.cornerRadius = 20.0
        openButton.layer.position = CGPoint(x: self.view.bounds.width / 2,
                                            y: self.view.bounds.height - 50)
        
        openButton.addTarget(self,
                             action: #selector(onOpenButtonTapped(sender:)),
                             for: .touchUpInside)
        
        self.view.addSubview(openButton)
    }
    
    /// Second画面を表示
    private func showSecondView() {
        let secondViewController = SecondViewController()
        secondViewController.modalTransitionStyle = .flipHorizontal
        
        self.present(secondViewController,
                     animated: true,
                     completion: nil)
    }
    
    /// "Open"ボタンタップイベント
    internal func onOpenButtonTapped(sender: UIButton) {
        // Second画面を表示
        self.showSecondView()
    }
}

