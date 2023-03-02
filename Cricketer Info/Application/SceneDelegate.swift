import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var mainCoordinator: MainCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let navigationController = UINavigationController()
        mainCoordinator = MainCoordinator(navigationController: navigationController)
        mainCoordinator?.showHomePage()
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
/// Understand each method here
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

//scene(_:willConnectTo:options:)
///This is the first method called in UISceneSession life cycle. This method will creates new UIWindow, sets the root view controller and makes this window the key window to be displayed.
//sceneWillEnterForeground(_:)
///This method is called when the scene is about to start like when app becomes active for the first time or when transitions from background to foreground.
//sceneDidBecomeActive(_:)
///This method is called right after the WillEnterForeground method and here the scene is set-up and visible and ready to use.
//sceneWillResignActive(_:) and sceneDidEnterBackground(_:)
///These methods are called when app stages to backgground .
//sceneDidDisconnect(_:)
///This is the interesting method of all the methods. When ever the scene is sent to background, iOS might decide to completely discard the scene to free up the resources. This doesn’t meant that the app is killed or not running, but just the scene is disconnected from the session and is not active. iOS can decide to reconnect back this scene to scene session when the user brings that particular scene to foreground again . This method can be used to discard any resources that aren’t used anymore.
