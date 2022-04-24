//
//  ViewController.swift
//  swift_ios
//
//  Created by namwoo on 2022/04/24.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    // 제목
    var titleLabel: UILabel = {
        let lable = UILabel()
        lable.text = "메인화면"
        lable.textAlignment = .center
        lable.font = UIFont.boldSystemFont(ofSize: 70)
        lable.textColor = .black
        return lable
    } ()
    
    let animationView: AnimationView = {
        let animView = AnimationView(name: "test-lottie")
        animView.frame = CGRect(x: 0, y:0, width: 400, height: 400)
        animView.contentMode = .scaleAspectFill
        return animView
    }()

    // 뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        view.addSubview(animationView)
        animationView.center = view.center

        // 애니메이션 실행 (finish : 콜백함수)
        // 애니메이션 종료 후 글자 보이게 하기
        animationView.play{(finish) in
            print("애니매이션 종료")
            
            // 로티 종료
            self.view.backgroundColor = .white
            self.animationView.removeFromSuperview()
            
            self.view.addSubview(self.titleLabel)
            
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false;
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true;
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true;
            
        }

    }
    

}

