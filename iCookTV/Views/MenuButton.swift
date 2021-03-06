//
//  MenuButton.swift
//  TryTVOS
//
//  Created by Ben on 09/04/2016.
//  Copyright © 2016 bcylin.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import UIKit

class MenuButton: UIButton {

  override init(frame: CGRect) {
    super.init(frame: frame)
    setUpAppearance()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setUpAppearance()
  }

  // MARK: - Private Methods

  private func setUpAppearance() {
    contentEdgeInsets = UIEdgeInsets(top: 15, left: 40, bottom: 15, right: 40)
    setTitleColor(UIColor.Palette.Button.TitleColor, for: UIControl.State())
    setTitleColor(UIColor.Palette.FocusedButton.TitleColor, for: .focused)
    setImage(UIImage.resizableImage(filledWith: UIColor.Palette.Button.BackgroundColor), for: .normal)
    setImage(UIImage.resizableImage(filledWith: UIColor.Palette.FocusedButton.BackgroundColor), for: .focused)
  }

}
