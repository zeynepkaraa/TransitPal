import SwiftUI

struct CredentialPageView: View {
    @StateObject var credentialPageViewModel = CredentialPageViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text(StringConstants.kMsgMakeYourCommu)
                        .font(FontScheme.kLeagueSpartanBold(size: getRelativeHeight(28.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(256.0), height: getRelativeHeight(72.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(157.0))
                        .padding(.horizontal, getRelativeWidth(55.0))
                    Text(StringConstants.kMsgInteractWithO)
                        .font(FontScheme.kLeagueSpartanLight(size: getRelativeHeight(18.0)))
                        .fontWeight(.light)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(245.0), height: getRelativeHeight(45.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(14.0))
                        .padding(.horizontal, getRelativeWidth(55.0))
                    Button(action: {
                        credentialPageViewModel.nextScreen = "LoginPageView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblLogIn)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(24.0)))
                                .fontWeight(.regular)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(10.0))
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(295.0),
                                       height: getRelativeHeight(56.0), alignment: .topLeading)
                                .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                        bottomLeft: 25.0, bottomRight: 25.0)
                                        .stroke(ColorConstants.Bluegray600,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                           bottomLeft: 25.0, bottomRight: 25.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(86.0))
                                .padding(.leading, getRelativeWidth(55.0))
                                .padding(.trailing, getRelativeWidth(40.0))
                        }
                    })
                    .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(56.0),
                           alignment: .topLeading)
                    .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                            bottomRight: 25.0)
                            .stroke(ColorConstants.Bluegray600,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(Color.clear.opacity(0.7)))
                    .padding(.top, getRelativeHeight(86.0))
                    .padding(.leading, getRelativeWidth(55.0))
                    .padding(.trailing, getRelativeWidth(40.0))
                    Button(action: {
                        credentialPageViewModel.nextScreen = "SignUpView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblSignUp)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(24.0)))
                                .fontWeight(.regular)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(10.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(295.0),
                                       height: getRelativeHeight(56.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                           bottomLeft: 25.0, bottomRight: 25.0)
                                        .fill(ColorConstants.Bluegray600))
                                .padding(.vertical, getRelativeHeight(16.0))
                                .padding(.leading, getRelativeWidth(55.0))
                                .padding(.trailing, getRelativeWidth(40.0))
                        }
                    })
                    .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(56.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.Bluegray600))
                    .padding(.vertical, getRelativeHeight(16.0))
                    .padding(.leading, getRelativeWidth(55.0))
                    .padding(.trailing, getRelativeWidth(40.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SignUpView(),
                                   tag: "SignUpView",
                                   selection: $credentialPageViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LoginPageView(),
                                   tag: "LoginPageView",
                                   selection: $credentialPageViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            credentialPageViewModel.nextScreen = "SignUpView"
        }
    }
}

struct CredentialPageView_Previews: PreviewProvider {
    static var previews: some View {
        CredentialPageView()
    }
}
