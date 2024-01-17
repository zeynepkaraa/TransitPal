import SwiftUI

struct ProfileView: View {
    @StateObject var profileViewModel = ProfileViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgProfileSetting)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(20.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(155.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(75.0))
                                .padding(.trailing, getRelativeWidth(75.0))
                            Button(action: {
                                profileViewModel.nextScreen = "UserProfileView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblView)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(24.0)))
                                        .fontWeight(.regular)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(295.0),
                                               height: getRelativeHeight(56.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                                bottomLeft: 25.0, bottomRight: 25.0)
                                                .stroke(ColorConstants.Bluegray600,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                                   bottomLeft: 25.0,
                                                                   bottomRight: 25.0)
                                                .fill(Color.clear.opacity(0.7)))
                                        .padding(.top, getRelativeHeight(18.0))
                                }
                            })
                            .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(56.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                    bottomRight: 25.0)
                                    .stroke(ColorConstants.Bluegray600,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(18.0))
                            ZStack(alignment: .topLeading) {
                                Text(StringConstants.kLbl2347)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(96.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(275.0),
                                           height: getRelativeHeight(117.0), alignment: .topLeading)
                                    .padding(.horizontal, getRelativeWidth(10.0))
                                Button(action: {
                                    profileViewModel.nextScreen = "EditUserProfileView"
                                }, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblEdit)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(24.0)))
                                            .fontWeight(.regular)
                                            .padding(.horizontal, getRelativeWidth(30.0))
                                            .padding(.vertical, getRelativeHeight(10.0))
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(295.0),
                                                   height: getRelativeHeight(56.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 25.0,
                                                                       topRight: 25.0,
                                                                       bottomLeft: 25.0,
                                                                       bottomRight: 25.0)
                                                    .fill(ColorConstants.Bluegray600))
                                            .padding(.bottom, getRelativeHeight(52.59))
                                    }
                                })
                                .frame(width: getRelativeWidth(295.0),
                                       height: getRelativeHeight(56.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                           bottomLeft: 25.0, bottomRight: 25.0)
                                        .fill(ColorConstants.Bluegray600))
                                .padding(.bottom, getRelativeHeight(52.59))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(117.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(7.0))
                        }
                        .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(228.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(14.0))
                    }
                    .frame(width: getRelativeWidth(323.0), height: getRelativeHeight(228.0),
                           alignment: .leading)
                    VStack(alignment: .leading, spacing: 0) {
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(323.0), height: getRelativeHeight(42.0),
                                   alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(323.0), height: getRelativeHeight(42.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(243.0))
                }
                .frame(width: getRelativeWidth(323.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.vertical, getRelativeHeight(270.0))
                .padding(.horizontal, getRelativeWidth(33.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: EditUserProfileView(),
                                   tag: "EditUserProfileView",
                                   selection: $profileViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: UserProfileView(),
                                   tag: "UserProfileView",
                                   selection: $profileViewModel.nextScreen,
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

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
