import UIKit

enum SocialPlatform {
    case twitter
    case facebook
    case instagram
    case linkedIn
}

func shareImage(on platform: SocialPlatform) {
    switch platform {
    case .twitter:
        print("This is where the code would go to share the image on Twitter.")
    case .facebook:
        print("This is where the code would go to share the image on Facebook.")
    case .instagram:
        print("This is where the code would go to share the image on Instagram.")
    case .linkedIn:
        print("This is where the code would go to share the image on LinkedIn.")
    }
}

shareImage(on: .twitter)


// MARK: ENUMS WITH RAW VALUES
enum SocialPlatform2: String {
    case twitter = "Twitter was created in 2006."
    case facebook = "Facebook was created in 2004."
    case instagram = "Instagram was created in 2010."
    case linkedIn = "LinkedIn was created in 2002."
}

func getSocialData(on platform: SocialPlatform2) {
    let data = platform.rawValue
    print(data)
}

getSocialData(on: .facebook)
getSocialData(on: .twitter)

// MARK: ENUMS WITH CASE ITARABLE
enum SocialPlatform3: String, CaseIterable {
    case twitter = "Twitter was created in 2006."
    case facebook = "Facebook was created in 2004."
    case instagram = "Instagram was created in 2010."
    case linkedIn = "LinkedIn was created in 2002."
}

let qttCases = SocialPlatform3.allCases.count

for platform in SocialPlatform3.allCases {
    print(platform.rawValue)
}


// MARK: ENUMS WITH ASSOCIATED VALUES
enum SocialMediaPlatform {
    case twitter(followers: Int)
    case youtube(subscribers: Int)
    case instagram
    case linkedIn
}

func getSponsorshipEligibility(for platform: SocialMediaPlatform) {
    switch platform {
    case .twitter(let followers) where followers > 10_000:
        print("Eligible for sponsored tweet.")
        
    case .youtube(let subscribers) where subscribers > 25_000:
        print("Eligible for sponsored video.")
        
    case .instagram, .linkedIn, .twitter, .youtube:
        print("Not eligible for sponsorship")
    }
}

getSponsorshipEligibility(for: .twitter(followers: 1_500))
