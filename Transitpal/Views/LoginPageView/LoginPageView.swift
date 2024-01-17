import SwiftUI

struct LoginPageView: View {
    @StateObject var loginPageViewModel = LoginPageViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text(StringConstants.kLblLogin2)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(54.0), height: getRelativeHeight(25.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(190.0))
                        .padding(.horizontal, getRelativeWidth(47.0))
                    HStack {
                        Image("img_group")
                            .resizable()
                            .frame(width: getRelativeWidth(17.0), height: getRelativeWidth(17.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(19.0))
                            .padding(.bottom, getRelativeHeight(20.0))
                            .padding(.leading, getRelativeWidth(32.0))
                        Text(StringConstants.kLblEmail)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray500)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(14.0))
                            .padding(.bottom, getRelativeHeight(17.0))
                            .padding(.leading, getRelativeWidth(11.0))
                            .padding(.trailing, getRelativeWidth(191.0))
                    }
                    .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(56.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                            bottomRight: 25.0)
                            .stroke(ColorConstants.Bluegray600,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(Color.clear.opacity(0.7)))
                    .padding(.top, getRelativeHeight(40.0))
                    .padding(.horizontal, getRelativeWidth(47.0))
                    ZStack(alignment: .leading) {
                        HStack {
                            Image("img_group_gray_500")
                                .resizable()
                                .frame(width: getRelativeWidth(19.0),
                                       height: getRelativeWidth(19.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kLblPassword)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black90044)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(77.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(9.0))
                        }
                        .frame(width: getRelativeWidth(105.0), height: getRelativeHeight(24.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(32.0))
                        .padding(.trailing, getRelativeWidth(158.0))
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(56.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                    bottomRight: 25.0)
                                    .stroke(ColorConstants.Bluegray600,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0)
                                    .fill(Color.clear.opacity(0.7)))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(56.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(26.0))
                    .padding(.horizontal, getRelativeWidth(47.0))
                    Button(action: {
                        loginPageViewModel.nextScreen = "HomeView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblLogin2)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(15.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(295.0),
                                       height: getRelativeHeight(55.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 23.0, topRight: 23.0,
                                                           bottomLeft: 23.0, bottomRight: 23.0)
                                        .fill(ColorConstants.Bluegray600))
                                .padding(.top, getRelativeHeight(34.0))
                                .padding(.horizontal, getRelativeWidth(47.0))
                        }
                    })
                    .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(55.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 23.0, topRight: 23.0, bottomLeft: 23.0,
                                               bottomRight: 23.0)
                            .fill(ColorConstants.Bluegray600))
                    .padding(.top, getRelativeHeight(34.0))
                    .padding(.horizontal, getRelativeWidth(47.0))
                    Text(StringConstants.kMsgForgetYourPas)
                        .font(FontScheme.kInterLight(size: getRelativeHeight(13.0)))
                        .fontWeight(.light)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(16.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(23.0))
                        .padding(.bottom, getRelativeHeight(20.0))
                        .padding(.horizontal, getRelativeWidth(47.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HomeView(),
                                   tag: "HomeView",
                                   selection: $loginPageViewModel.nextScreen,
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
    }
}

struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
    }
}
