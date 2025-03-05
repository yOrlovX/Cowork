//
//  OnboardingView.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 04.03.2025.
//

import SwiftUI

enum OnboardingState {
    case first
    case second
    case third
}

struct OnboardingView: View {
    @State private var onboardingState: OnboardingState = .first
    
    var body: some View {
        ZStack {
            switch onboardingState {
            case .first:
                firstOnboardingScreen
            case .second:
                secondOnboardingScreen
            case .third:
                thirdOnboardingScreen
            }
        }
    }
}

extension OnboardingView {
    private var firstOnboardingScreen: some View {
        VStack(spacing: 40) {
            Image("onboarding1")
                .resizable()
                .scaledToFit()
            VStack(alignment: .leading, spacing: 10) {
                Text("Welcome to \nCowork")
                    .foregroundColor(.primaryDark)
                    .font(Montserrat.medium.size(size: 28))
                
                HStack(alignment: .top) {
                    Text("work and organize events with \nfriends outside the office to get \nrid of boredom")
                        .font(Montserrat.medium.size(size: 12))
                        .foregroundColor(.primaryGray)
                    Spacer()
                    Button(action: { onboardingState = .second }) {
                        Rectangle()
                            .foregroundColor(.primaryDark)
                            .frame(width: 38, height: 38)
                            .cornerRadius(8)
                            .overlay {
                                Image(systemName: "chevron.right")
                                    .renderingMode(.template)
                                    .foregroundColor(.white)
                            }
                    }
                }
            }
            .padding(.horizontal, 20)
            Spacer()
        }
        .ignoresSafeArea(edges: .top)
    }
    
    private var secondOnboardingScreen: some View {
        VStack(spacing: 40) {
            Image("onboarding2")
                .resizable()
                .scaledToFit()
            VStack(alignment: .leading, spacing: 10) {
                Text("Find a Working \nspace")
                    .foregroundColor(.primaryDark)
                    .font(Montserrat.medium.size(size: 28))
                
                HStack(alignment: .top) {
                    Text("find coworking space easily \nand quickly through this \napplication ")
                        .font(Montserrat.medium.size(size: 12))
                        .foregroundColor(.primaryGray)
                    Spacer()
                    Button(action: { onboardingState = .third }) {
                        Rectangle()
                            .foregroundColor(.primaryDark)
                            .frame(width: 38, height: 38)
                            .cornerRadius(8)
                            .overlay {
                                Image(systemName: "chevron.right")
                                    .renderingMode(.template)
                                    .foregroundColor(.white)
                            }
                    }
                }
            }
            .padding(.horizontal, 20)
            Spacer()
        }
        .ignoresSafeArea(edges: .top)
    }
    
    private var thirdOnboardingScreen: some View {
        VStack(spacing: 40) {
            Image("onboarding3")
                .resizable()
                .scaledToFit()
            VStack(alignment: .leading, spacing: 10) {
                Text("Create An \nEvent")
                    .foregroundColor(.primaryDark)
                    .font(Montserrat.medium.size(size: 28))
                
                HStack {
                    Text("Create your event by determining \nthe place that has been provided")
                        .font(Montserrat.medium.size(size: 12))
                        .foregroundColor(.primaryGray)
                    Spacer()
                    Button(action: {}) {
                        Rectangle()
                            .foregroundColor(.primaryDark)
                            .frame(width: 38, height: 38)
                            .cornerRadius(8)
                            .overlay {
                                Image(systemName: "chevron.right")
                                    .renderingMode(.template)
                                    .foregroundColor(.white)
                            }
                    }
                }
            }
            .padding(.horizontal, 20)
            Spacer()
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
