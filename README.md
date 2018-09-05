# WWCircularCollectionView
一個可以無限滾動的滾輪

[![Swift 4.0](https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat)](https://developer.apple.com/swift/) [![Version](https://img.shields.io/cocoapods/v/WWCircularCollectionView.svg?style=flat)](http://cocoapods.org/pods/WWCircularCollectionView) [![Platform](https://img.shields.io/cocoapods/p/WWCircularCollectionView.svg?style=flat)](http://cocoapods.org/pods/WWCircularCollectionView) [![License](https://img.shields.io/cocoapods/l/WWCircularCollectionView.svg?style=flat)](http://cocoapods.org/pods/WWCircularCollectionView)

![ 一個自訂的CircularCollectionView (上傳至Cocoapods) ](https://raw.githubusercontent.com/William-Weng/WWCircularCollectionView/master/WWCircularCollectionView.gif)

# 使用範例
![IBOutlet](https://raw.githubusercontent.com/William-Weng/WWCircularCollectionView/master/IBOutlet.png)

```swift
import UIKit
import WWCircularCollectionView

class ViewController: UIViewController {
    
    @IBOutlet weak var nowLabel: UILabel!
    @IBOutlet weak var lastLabel: UILabel!
    @IBOutlet weak var collectionView: WWCircularCollectionView!
    
    let isInfinity = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegateSetting()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController {
    
    func delegateSetting() {
        
        guard let layout = collectionView.collectionViewLayout as? WWCircularCollectionViewLayout else { return }
        
        layout.wwDelegate = self
        collectionView.wwDelegate = self
    }
}

extension ViewController: WWCircularCollectionViewDelegate {
    
    func isInfinity(_ wwCircularCollectionView: WWCircularCollectionView) -> Bool {
        return isInfinity
    }
    
    func imagesDiectory(_ wwCircularCollectionView: WWCircularCollectionView) -> [String] {
        return Bundle.main.paths(forResourcesOfType: "png", inDirectory: "Images")
    }
}

extension ViewController: WWCircularCollectionViewLayoutDelegate {
    
    func wwCircularCollectionViewLayout(_ wwCircularCollectionViewLayout: WWCircularCollectionViewLayout, selectedIndex index: Int) {
        nowLabel.text = index.description
    }
    
    func wwCircularCollectionViewLayout(_ wwCircularCollectionViewLayout: WWCircularCollectionViewLayout, lastSelectedIndex index: Int) {
        lastLabel.text = index.description
    }
}
```