//
//  RNCubiCasaView.swift
//
//  Created by Filipe on 10/21/21.
//

import UIKit
import CubiCapture

class RNCubiCasaView: UIView {
  
  override init(frame: CGRect) {
     super.init(frame: frame)
     setupView()
   }
  
   required init?(coder aDecoder: NSCoder) {
     super.init(coder: aDecoder)
     setupView()
   }
  
  private func setupView() {
    let cubiCapture = CCCapture()
    cubiCapture.delegateCapture = self
    
    self.backgroundColor = self.status ? .green : .red
    self.isUserInteractionEnabled = true
    
    present(cubiCapture, animated: true, completion: nil)
  }
  
  @objc var status = false {
      didSet {
          self.setupView()
      }
  }
   
  @objc var onClick: RCTBubblingEventBlock?
   
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
      guard let onClick = self.onClick else { return }
   
      let params: [String : Any] = ["value1":"react demo","value2":1]
      onClick(params)
  }

}

@objc (RCTMyCustomViewManager)
class RCTMyCustomViewManager: RCTViewManager {
 
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
 
  override func view() -> UIView! {
    return MyCustomView()
  }
 
}
