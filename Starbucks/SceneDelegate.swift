//
//  SceneDelegate.swift
//  Starbucks
//
//  Created by 황혜림 on 2022/07/08.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }
    
    
    func sceneDidBecomeActive(_ scene: UIScene) {
            print("SceneDelegate - sceneDidBecomeActive 켜지기 전 2 (App Switcher 모드 였다가 돌아올 때)")
            callBackgroundImage(false)
        }

    func sceneWillResignActive(_ scene: UIScene) {
        print("SceneDelegate - sceneWillResignActive - 쓸어 올렸을 때, App Switcher 모드")
            callBackgroundImage(true)
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        print("SceneDelegate - sceneWillEnterForeground - 켜지기 전 1 (완전 백그라운드로 갔다 다시 돌아올 때) 백그라운드로 갔다가 바로 오면 여기 안탐. 백그라운드 1초 있다가 켜야 여기 탐")
            callBackgroundImage(false)
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        print("SceneDelegate - sceneDidEnterBackground - 백그라운드로 갔을 때, 홈 눌렀을 때")
            callBackgroundImage(true)
    }
    
    func callBackgroundImage(_ bShow: Bool) {
            
            let TAG_BG_IMG = -101

            let backgroundView = window?.rootViewController?.view.window?.viewWithTag(TAG_BG_IMG)

            if bShow {

                if backgroundView == nil {

                    //여기서 보여주고 싶은 뷰 자유롭게 생성
                    let bgView = UIView()
                    bgView.frame = UIScreen.main.bounds
                    bgView.tag = TAG_BG_IMG
                    bgView.backgroundColor = .black
                    
                    let imageView: UIImageView = {
                            let aImageView = UIImageView()
                            aImageView.backgroundColor = .red
                            //표시될 UIImage 객체 부여
                            aImageView.image = UIImage(named: "background")
                            aImageView.translatesAutoresizingMaskIntoConstraints = false
                            return aImageView
                        }()
                    
                    bgView.addSubview(imageView)

                    NSLayoutConstraint.activate([
                        imageView.centerYAnchor.constraint(equalTo: bgView.centerYAnchor),
                        imageView.centerXAnchor.constraint(equalTo: bgView.centerXAnchor)
                    ])

                    window?.rootViewController?.view.window?.addSubview(bgView)
                }
            } else {

                if let backgroundView = backgroundView {
                    backgroundView.removeFromSuperview()
                }
            }
        }


}

