import SwiftUI

struct MatchedProfileView: View {
    @StateObject var matchedProfileViewModel = MatchedProfileViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Text(StringConstants.kMsgYourTransitpal)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(24.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(275.0), height: getRelativeHeight(29.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(12.0))
                        Text(StringConstants.kLblSh20232)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(40.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Bluegray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(148.0), height: getRelativeHeight(53.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(12.0))
                        Text(StringConstants.kLblSherry)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(55.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(16.0))
                            .padding(.horizontal, getRelativeWidth(12.0))
                        Image("img_image3")
                            .resizable()
                            .frame(width: getRelativeWidth(216.0), height: getRelativeHeight(215.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipShape(Circle())
                            .clipShape(Capsule())
                            .padding(.top, getRelativeHeight(5.0))
                            .padding(.horizontal, getRelativeWidth(12.0))
                    }
                    .frame(width: getRelativeWidth(300.0), height: getRelativeHeight(344.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(8.0))
                    .padding(.horizontal, getRelativeWidth(45.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblSimilarities)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                        ZStack(alignment: .bottomTrailing) {
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kMsg2MutualFriend)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900B2)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(153.0),
                                           height: getRelativeHeight(43.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(10.0))
                                Text(StringConstants.kLblReviews)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(68.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(25.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                Text(StringConstants.kMsgGreatPalForT)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900B2)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(137.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(5.0))
                                    .padding(.horizontal, getRelativeWidth(10.0))
                                Text(StringConstants.kLblReadMore)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Bluegray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(79.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.horizontal, getRelativeWidth(13.0))
                            }
                            .frame(width: getRelativeWidth(165.0), height: getRelativeHeight(141.0),
                                   alignment: .leading)
                            .padding(.trailing, getRelativeWidth(12.0))
                            Image("img_stars_yellow_300")
                                .resizable()
                                .frame(width: getRelativeWidth(100.0),
                                       height: getRelativeHeight(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(70.85))
                                .padding(.leading, getRelativeWidth(77.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(177.0), height: getRelativeHeight(141.0),
                               alignment: .leading)
                        .padding(.trailing, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(300.0), height: getRelativeHeight(167.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(14.0))
                    .padding(.horizontal, getRelativeWidth(45.0))
                    VStack {
                        Button(action: {
                            matchedProfileViewModel.nextScreen = "ChatView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblChatNow)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(15.0))
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(295.0),
                                           height: getRelativeHeight(55.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 23.0, topRight: 23.0,
                                                            bottomLeft: 23.0, bottomRight: 23.0)
                                            .stroke(ColorConstants.Lime800,
                                                    lineWidth: 3))
                                    .background(RoundedCorners(topLeft: 23.0, topRight: 23.0,
                                                               bottomLeft: 23.0, bottomRight: 23.0)
                                            .fill(ColorConstants.DeepOrange100))
                                    .padding(.leading, getRelativeWidth(4.0))
                            }
                        })
                        .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(55.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 23.0, topRight: 23.0, bottomLeft: 23.0,
                                                bottomRight: 23.0)
                                .stroke(ColorConstants.Lime800,
                                        lineWidth: 3))
                        .background(RoundedCorners(topLeft: 23.0, topRight: 23.0, bottomLeft: 23.0,
                                                   bottomRight: 23.0)
                                .fill(ColorConstants.DeepOrange100))
                        .padding(.leading, getRelativeWidth(4.0))
                        Button(action: {
                            matchedProfileViewModel.nextScreen = "StartTripView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblStartTrip)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(16.0))
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(300.0),
                                           height: getRelativeHeight(56.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                            bottomLeft: 25.0, bottomRight: 25.0)
                                            .stroke(ColorConstants.Green700,
                                                    lineWidth: 3))
                                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                               bottomLeft: 25.0, bottomRight: 25.0)
                                            .fill(ColorConstants.Green100))
                                    .padding(.top, getRelativeHeight(9.0))
                            }
                        })
                        .frame(width: getRelativeWidth(300.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                bottomRight: 25.0)
                                .stroke(ColorConstants.Green700,
                                        lineWidth: 3))
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.Green100))
                        .padding(.top, getRelativeHeight(9.0))
                        Button(action: {
                            matchedProfileViewModel.nextScreen = "StartTripView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblUnmatch)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(16.0))
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(300.0),
                                           height: getRelativeHeight(56.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                            bottomLeft: 25.0, bottomRight: 25.0)
                                            .stroke(ColorConstants.Pink900,
                                                    lineWidth: 3))
                                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                               bottomLeft: 25.0, bottomRight: 25.0)
                                            .fill(ColorConstants.DeepOrange50))
                                    .padding(.top, getRelativeHeight(9.0))
                            }
                        })
                        .frame(width: getRelativeWidth(300.0), height: getRelativeHeight(56.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                bottomRight: 25.0)
                                .stroke(ColorConstants.Pink900,
                                        lineWidth: 3))
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.DeepOrange50))
                        .padding(.top, getRelativeHeight(9.0))
                    }
                    .frame(width: getRelativeWidth(300.0), height: getRelativeHeight(185.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(20.0))
                    .padding(.horizontal, getRelativeWidth(45.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: StartTripView(),
                                   tag: "StartTripView",
                                   selection: $matchedProfileViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ChatView(),
                                   tag: "ChatView",
                                   selection: $matchedProfileViewModel.nextScreen,
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

struct MatchedProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedProfileView()
    }
}
