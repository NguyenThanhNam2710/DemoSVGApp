//
//  AppColor1.swift
//  FPaySDK
//
//  Created by Matsu on 11/05/2022.
//

import Foundation
import UIKit
import IBAnimatable

public enum IntegrationApp: String {
    case foxpayDark = "Foxpay Dark"
    case foxpayLight = "Foxpay Light"
    case fptPlay = "FPT Play"
    case hiFPT = "Hi FPT"
}

enum SystemColor {
    // Foxpay
    case P1
    case hex015A80
    case P4
    case P8
    case hex15A0BE
    case hexBDBDBD
    case hexFF8019
    case hex013E58
    case hex19D6FF
    case hex212121
    case hexD6EAF3
    case hex749CAD
    case hexFFA731
    case hexFFFFFF
    case hex13C1C1
    case hexEF2525
    case hex155671
    
    // FPT Play
    case hex141414
    case hexF2F2F2
    case hex1F1F1F
    case hex343131
    case hexFF6500
    case hex969696
    case hex4F4F4F
    case hex333333
    case hex000000
    
    // HiFPT
    case hexF3F6FF
    case hex666666
    case hex89A7FE
    case hexF9FBFF
    case hex4564ED
    case hex323232
    case hexFEA02F
    case hexF9FAFF
    
    /// Get color value
    var value: UIColor {
        return UIColor(hexString: self.hexString)
    }
    
    // MARK: - Hex value string
    var hexString: String {
        switch self {
        case .P1:
            return "19D6FF"
        case .hex015A80:
            return "015A80"
        case .P4:
            return "004766"
        case .P8:
            return "EBF6FB"
        case .hex15A0BE:
            return "15A0BE"
        case .hexBDBDBD:
            return "BDBDBD"
        case .hexFF8019:
            return "FF8019"
        case .hex013E58:
            return "013E58"
        case .hex19D6FF:
            return "19D6FF"
        case .hexD6EAF3:
            return "D6EAF3"
        case .hex212121:
            return "212121"
        case .hex749CAD:
            return "749CAD"
        case .hexFFA731:
            return "FFA731"
        case .hexFFFFFF:
            return "FFFFFF"
        case .hex000000:
            return "000000"
        case .hex13C1C1:
            return "13C1C1"
        case .hexEF2525:
            return "EF2525"
        case .hex155671:
            return "155671"
            
        case .hex141414:
            return "141414"
        case .hexF2F2F2:
            return "F2F2F2"
        case .hex1F1F1F:
            return "1F1F1F"
        case .hex343131:
            return "343131"
        case .hexFF6500:
            return "FF6500"
        case .hex969696:
            return "969696"
        case .hex4F4F4F:
            return "4F4F4F"
        case .hex333333:
            return "333333"
        case .hexF3F6FF:
            return "F3F6FF"
        case .hex666666:
            return "666666"
        case .hex89A7FE:
            return "89A7FE"
        case .hexF9FBFF:
            return "F9FBFF"
        case .hex4564ED:
            return "4564ED"
        case .hex323232:
            return "323232"
        case .hexFEA02F:
            return"FEA02F"
        case .hexF9FAFF:
            return "F9FAFF"
        }
    }
}

enum AppColour {
    // Component's colors
    case screenBackground
    case navigationTitle
    case navigationButton
    case avatarView
    case primaryContainer
    case secondaryContainer
    case serviceIcon
    case serviceTitle
    case viewCircleBackground
    case viewCircleIcon
    case tabbarBackground
    case tabbarItem
    case tabbarSelectedItem
    case tabSelectedBackground
    case tabSelectedTitle
    case tabUnselectedBackground
    case tabUnselectedTitle
    case emptyDataLabel
    case primaryText
    case primaryValue
    case primaryButtonBackground
    case primaryButtonTitle
    case secondaryButtonTitle
    case tfTitle                // Top of textfield
    case tfText
    case tfUnderline
    case tfPlaceholder
    case keyboardBtnBackground
    case keyboardBtnTitle
    case warningTitle           // Error from server
    case alertBackground
    case alertTitle
    case alertMessage
    case commonRule
    case sectionTitle
    case homeButtonBackground
    case homeButtonImage
    case searchbarBackground
    case viewBackgroundAvatar    //background avatar
    case categorySelectedBackground
    case categoryUnselectedBackground
    case categorySelectedTitle
    
    // Status
    case statusInfo
    case statusWarning
    case statusFail
    case statusSuccess
    
    /// Get color value
    var value: UIColor {
        return UIColor(hexString: self.hexString)
    }
    
    var hexString: String {
        let crtTheme: IntegrationApp = .fptPlay
        switch crtTheme {
        case .foxpayDark:
            return getFoxpayDarkTheme(color: self)
        case .foxpayLight:
            return getFoxpayLightTheme(color: self)
        case .fptPlay:
            return getFPTPlayTheme(color: self)
        case .hiFPT:
            return getHiFPTTheme(color: self)
        }
    }
    
    fileprivate func getFoxpayDarkTheme(color: AppColour) -> String {
        switch color {
        case .screenBackground:
            return SystemColor.P4.hexString
        case .navigationTitle, .serviceTitle, .tabbarBackground, .primaryText, .tfTitle, .keyboardBtnTitle, .alertMessage, .commonRule, .serviceIcon, .categorySelectedTitle, .homeButtonImage:
            return SystemColor.hexFFFFFF.hexString
        case .navigationButton, .viewCircleBackground, .tabUnselectedTitle, .emptyDataLabel, .tfUnderline, .viewBackgroundAvatar:
            return SystemColor.hex15A0BE.hexString
        case .keyboardBtnBackground, .alertBackground, .viewCircleIcon, .primaryContainer, .tabSelectedBackground, .categorySelectedBackground:
            return SystemColor.hex015A80.hexString
        case .tabbarItem:
            return SystemColor.hexBDBDBD.hexString
        case .tabbarSelectedItem:
            return SystemColor.hexFF8019.hexString
        case .tabSelectedTitle, .primaryButtonBackground, .secondaryButtonTitle, .primaryValue, .tfText, .tfPlaceholder, .alertTitle, .sectionTitle, .statusInfo:
            return SystemColor.hex19D6FF.hexString
        case .tabUnselectedBackground, .primaryButtonTitle, .searchbarBackground, .categoryUnselectedBackground, .secondaryContainer:
            return SystemColor.hex013E58.hexString
        case .warningTitle, .statusWarning:
            return SystemColor.hexFFA731.hexString
        case .avatarView:
            return SystemColor.hex19D6FF.hexString
        case .statusFail:
            return SystemColor.hexEF2525.hexString
        case .statusSuccess:
            return SystemColor.hex13C1C1.hexString
        case .homeButtonBackground:
            return SystemColor.hex155671.hexString
//        default:
//            return ""
        }
    }
    
    fileprivate func getFoxpayLightTheme(color: AppColour) -> String {
        switch color {
        case .screenBackground:
            return SystemColor.P8.hexString
        case .navigationTitle, .serviceIcon, .emptyDataLabel, .primaryValue, .secondaryButtonTitle, .tfText, .tfPlaceholder, .keyboardBtnTitle, .alertTitle, .sectionTitle:
            return SystemColor.hex015A80.hexString
        case .navigationButton, .tabbarItem:
            return SystemColor.hexBDBDBD.hexString
        case .primaryContainer, .viewCircleIcon, .tabbarBackground, .keyboardBtnBackground, .alertBackground, .categorySelectedBackground, .homeButtonImage:
            return SystemColor.hexFFFFFF.hexString
        case .serviceTitle, .primaryText, .tfTitle, .alertMessage:
            return SystemColor.hex212121.hexString
        case .viewCircleBackground, .tfUnderline, .viewBackgroundAvatar:
            return SystemColor.hex15A0BE.hexString
        case .tabbarSelectedItem:
            return SystemColor.hexFF8019.hexString
        case .tabSelectedBackground, .primaryButtonBackground, .statusInfo:
            return SystemColor.hex013E58.hexString
        case .tabSelectedTitle, .primaryButtonTitle:
            return SystemColor.hex19D6FF.hexString
        case .tabUnselectedBackground, .searchbarBackground, .categoryUnselectedBackground, .secondaryContainer:
            return SystemColor.hexD6EAF3.hexString
        case .tabUnselectedTitle:
            return SystemColor.hex749CAD.hexString
        case .warningTitle, .statusWarning:
            return SystemColor.hexFFA731.hexString
        case .avatarView:
            return SystemColor.hex015A80.hexString
        case .categorySelectedTitle, .commonRule:
            return SystemColor.hex333333.hexString
        case .statusFail:
            return SystemColor.hexEF2525.hexString
        case .statusSuccess:
            return SystemColor.hex13C1C1.hexString
        case .homeButtonBackground:
            return SystemColor.hex155671.hexString
//        default:
//            return ""
        }
    }
    
    fileprivate func getFPTPlayTheme(color: AppColour) -> String {
        switch color {
        case .screenBackground, .viewCircleIcon:
            return SystemColor.hex141414.hexString
        case .navigationTitle, .serviceTitle, .primaryText, .primaryButtonTitle, .tfTitle, .keyboardBtnTitle, .alertMessage, .categorySelectedTitle:
            return SystemColor.hexFFFFFF.hexString
        case .navigationButton, .commonRule:
            return SystemColor.hexF2F2F2.hexString
        case .primaryContainer, .tabSelectedBackground, .keyboardBtnBackground, .alertBackground, .tabbarBackground, .searchbarBackground, .categorySelectedBackground:
            return SystemColor.hex1F1F1F.hexString
        case .secondaryContainer:
            return SystemColor.hex343131.hexString
        case .serviceIcon, .tabSelectedTitle, .primaryValue, .primaryButtonBackground, .secondaryButtonTitle, .tfText, .alertTitle, .sectionTitle, .tabbarSelectedItem, .viewCircleBackground, .homeButtonImage, .statusInfo:
            return SystemColor.hexFF6500.hexString
        case .tabbarItem:
            return SystemColor.hexBDBDBD.hexString
        case .tabUnselectedBackground:
            return SystemColor.hex1F1F1F.hexString
        case .tabUnselectedTitle, .tfUnderline, .tfPlaceholder:
            return SystemColor.hex969696.hexString
        case .emptyDataLabel:
            return SystemColor.hex4F4F4F.hexString
        case .warningTitle, .statusWarning, .statusFail:
            return SystemColor.hexEF2525.hexString
        case .avatarView:
            return SystemColor.hex969696.hexString
        case .homeButtonBackground:
            return SystemColor.hex333333.hexString
        case .categoryUnselectedBackground:
            return SystemColor.hex000000.hexString
        case .statusSuccess:
            return SystemColor.hex13C1C1.hexString
        case .viewBackgroundAvatar:
            return SystemColor.hexFFFFFF.hexString
        }
    }
    
    fileprivate func getHiFPTTheme(color: AppColour) -> String {
        switch color {
        case .screenBackground, .viewCircleIcon:
            return SystemColor.hexF3F6FF.hexString
        case .navigationTitle:
            return SystemColor.hex666666.hexString
        case .navigationButton, .tabUnselectedBackground, .tfUnderline, .tfPlaceholder:
            return SystemColor.hex89A7FE.hexString
        case .primaryContainer, .tabSelectedTitle, .tabUnselectedTitle, .primaryButtonTitle, .keyboardBtnBackground, .alertBackground, .tabbarBackground, .homeButtonImage, .searchbarBackground, .categorySelectedBackground:
            return SystemColor.hexFFFFFF.hexString
        case .secondaryContainer:
            return SystemColor.hexF9FBFF.hexString
        case .serviceIcon, .tabSelectedBackground, .emptyDataLabel, .primaryValue, .primaryButtonBackground, .secondaryButtonTitle, .tfText, .sectionTitle, .keyboardBtnTitle, .viewCircleBackground, .tabbarSelectedItem, .homeButtonBackground, .statusInfo:
            return SystemColor.hex4564ED.hexString
        case .serviceTitle, .categorySelectedTitle:
            return SystemColor.hex323232.hexString
        case .tabbarItem:
            return SystemColor.hexBDBDBD.hexString
        case .primaryText, .tfTitle, .alertTitle, .alertMessage, .commonRule:
            return SystemColor.hex212121.hexString
        case .warningTitle, .statusWarning:
            return SystemColor.hexFEA02F.hexString
        case .avatarView:
            return SystemColor.hex89A7FE.hexString
        case .categoryUnselectedBackground:
            return SystemColor.hexF9FAFF.hexString
        case .statusFail:
            return SystemColor.hexEF2525.hexString
        case .statusSuccess:
            return SystemColor.hex13C1C1.hexString
        case .viewBackgroundAvatar:
            return SystemColor.hex15A0BE.hexString
        }
    }
}

enum WebColor: String {
    case screenBackground = "screenBackground"
    case primaryContainer = "primaryContainer"
    case iconBackground = "iconBackground"
    case primaryText = "primaryText"
    case primaryValue = "primaryValue"
    case highlightColor = "highlightColor"
    case textfieldText = "textfieldText"
    case primaryButtonBackground = "primaryButtonBackground"
    case primaryButtonTittle = "primaryButtonTittle"
    
    var hexString: String {
        switch self {
        case .screenBackground:
            return AppColour.screenBackground.hexString
        case .primaryContainer:
            return AppColour.primaryContainer.hexString
        case .iconBackground:
            return AppColour.viewCircleBackground.hexString
        case .primaryText:
            return AppColour.primaryText.hexString
        case .primaryValue:
            return AppColour.primaryValue.hexString
        case .highlightColor:
            return AppColour.tfTitle.hexString
        case .textfieldText:
            return AppColour.tfText.hexString
        case .primaryButtonBackground:
            return AppColour.primaryButtonBackground.hexString
        case .primaryButtonTittle:
            return AppColour.primaryButtonTitle.hexString
        }
    }
}
