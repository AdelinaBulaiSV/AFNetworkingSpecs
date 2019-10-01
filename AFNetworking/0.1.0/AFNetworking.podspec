#
#  Be sure to run `pod spec lint AFNetworking.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

# ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  These will help people to find your library, and whilst it
#  can feel like a chore to fill in it's definitely to your advantage. The
#  summary should be tweet-length, and the description more in depth.
#

s.name         = "AFNetworking"
s.version      = "0.1.0"
s.summary      = "A delightful iOS and OS X networking framework."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
s.description  = "Description of a delightful iOS and OS X networking framework."

s.homepage     = "https://github.com/AdelinaBulaiSV/AFNetworking"
# s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


# ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Licensing your code is important. See http://choosealicense.com for more info.
#  CocoaPods will detect a license file if there is a named LICENSE*
#  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
#

s.license      = "MIT"
# s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


# ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Specify the authors of the library, with email addresses. Email addresses
#  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
#  accepts just a name if you'd rather not provide an email address.
#
#  Specify a social_media_url where others can refer to, for example a twitter
#  profile URL.
#

s.author             = { "Adelina Bulai" => "adelina.bulai@softvision.ro" }
# Or just: s.author    = "Adelina Bulai"
# s.authors            = { "Adelina Bulai" => "adelina.bulai@softvision.ro" }
# s.social_media_url   = "http://twitter.com/Adelina Bulai"

# ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  If this Pod runs only on iOS or OS X, then specify the platform and
#  the deployment target. You can optionally include the target after the platform.
#

# s.platform     = :ios
# s.platform     = :ios, "5.0"

#  When using multiple platforms
s.ios.deployment_target = "7.0"
s.osx.deployment_target = "10.9"
s.watchos.deployment_target = "2.0"
s.tvos.deployment_target = "9.0"


# ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Specify the location from where the source should be retrieved.
#  Supports git, hg, bzr, svn and HTTP.
#

s.source = { :git => "https://github.com/AdelinaBulaiSV/AFNetworking.git", :tag => "#{s.version}", :submodules => true}


# ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  CocoaPods is smart about how it includes source code. For source files
#  giving a folder will include any swift, h, m, mm, c & cpp files.
#  For header files it will include any header in the folder.
#  Not including the public_header_files will make all headers public.
#

s.source_files  = "AFNetworking/AFNetworking.h"
s.public_header_files = "AFNetworking/AFNetworking.h"
s.prefix_header_contents = "#ifndef TARGET_OS_IOS\n  #define TARGET_OS_IOS TARGET_OS_IPHONE\n#endif\n\n#ifndef TARGET_OS_WATCH\n  #define TARGET_OS_WATCH 0\n#endif\n\n#ifndef TARGET_OS_TV\n  #define TARGET_OS_TV 0\n#endif"

# ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  A list of resources included with the Pod. These are copied into the
#  target bundle with a build phase script. Anything else will be cleaned.
#  You can preserve files from being cleaned, please don't preserve
#  non-essential files like tests, examples and documentation.
#

# s.resource  = "icon.png"
# s.resources = "Resources/*.png"

# s.preserve_paths = "FilesToSave", "MoreFilesToSave"


# ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Link your library with frameworks, or libraries. Libraries do not include
#  the lib prefix of their name.
#

# s.framework  = "SomeFramework"
# s.frameworks = "SomeFramework", "AnotherFramework"

# s.library   = "iconv"
# s.libraries = "iconv", "xml2"


# ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  If your library depends on compiler flags you can set them in the xcconfig hash
#  where they will only apply to your library. If you depend on other Podspecs
#  you can include multiple dependencies to ensure it works.

# s.requires_arc = true

# s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
# s.dependency "JSONKit", "~> 1.4"


# ――― Subspecs ――――――――――――――――――――――--------――――――――――――――――――――――――――――――――――― #


s.subspec 'Serialization' do |sp|
sp.source_files = "AFNetworking/AFURL{Request,Response}Serialization.{h,m}"
sp.public_header_files = "AFNetworking/AFURL{Request,Response}Serialization.h"
sp.watchos.frameworks = "MobileCoreServices", "CoreGraphics"
sp.ios.frameworks = "MobileCoreServices", "CoreGraphics"
sp.osx.frameworks = "CoreServices"
end

s.subspec 'Security' do |sp|
sp.source_files = "AFNetworking/AFSecurityPolicy.{h,m}"
sp.public_header_files = "AFNetworking/AFSecurityPolicy.h"
sp.framework = "Security"
end

s.subspec 'Reachability' do |sp|
sp.source_files = "AFNetworking/AFNetworkReachabilityManager.{h,m}"
sp.public_header_files = "AFNetworking/AFNetworkReachabilityManager.h"
sp.framework = "SystemConfiguration"
sp.ios.deployment_target = "7.0"
sp.osx.deployment_target = "10.9"
sp.tvos.deployment_target = "9.0"
end

s.subspec 'NSURLSession' do |sp|
sp.source_files = "AFNetworking/AF{URL,HTTP}SessionManager.{h,m}", "AFNetworking/AFCompatibilityMacros.h"
sp.public_header_files = "AFNetworking/AF{URL,HTTP}SessionManager.h", "AFNetworking/AFCompatibilityMacros.h"
# sp.dependencies = "AFNetworking/Serialization", "AFNetworking/Security"
sp.dependency "AFNetworking/Serialization"
sp.dependency "AFNetworking/Security"
sp.ios.dependency "AFNetworking/Reachability"
sp.osx.dependency "AFNetworking/Reachability"
sp.tvos.dependency "AFNetworking/Reachability"
end

s.subspec 'UIKit' do |sp|
sp.ios.deployment_target = "7.0"
s.tvos.deployment_target = "9.0"
sp.source_files = "UIKit+AFNetworking"
sp.public_header_files = "UIKit+AFNetworking/*.h"
sp.dependency "AFNetworking/NSURLSession"
end

end
