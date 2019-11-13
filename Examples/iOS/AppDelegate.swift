import UIKit
import AVFoundation
import Logboard
import HaishinKit

let logger: Logboard = Logboard.with("com.haishinkit.Exsample.iOS")

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        Logboard.with(HaishinKitIdentifier).level = .trace
        let session: AVAudioSession = AVAudioSession.sharedInstance()
        do {
            try session.setPreferredSampleRate(44_100)
            try session.setCategory(AVAudioSession.Category.playAndRecord)
            try session.setMode(AVAudioSession.Mode.default)
            try session.setActive(true)
        } catch {
        }
        return true
    }
}

