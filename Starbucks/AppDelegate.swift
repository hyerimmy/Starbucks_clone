//
//  AppDelegate.swift
//  Starbucks
//
//  Created by 황혜림 on 2022/07/08.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("didFinishLaunchingWithOptions")

        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        print("didDiscardSceneSessions")
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    //어플리케이션이 Background 로 전환 되었을 때 함수가 호출 된다.
    func applicationDidEnterBackground(_ application: UIApplication){
        print("applicationDidEnterBackground")
    }
     
    
    //어플리케이션이 Background 에서 Fore ground로 진입 할 때 함수가 호출 된다.
    func applicationWillEnterForeground(_ application: UIApplication){
        print("applicationWillEnterForeground")
        
    }
    
    //어플리케이션이 suspend 에서 not Running 으로 변경 될 때 실행된다. 즉 프로세스가 kill될 때 실행되는 함수다.
    func applicationWillTerminate(_ application: UIApplication){
        print("applicationWillTerminate")
        
    }


}

