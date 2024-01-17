import SwiftUI

struct StartTripView: View {
    @StateObject var startTripViewModel = StartTripViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        VStack {
                            Button(action: {
                                startTripViewModel.nextScreen = "ReviewView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblEmergency)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(24.0)))
                                        .fontWeight(.regular)
                                        .padding(.trailing, getRelativeWidth(12.0))
                                        .padding(.leading, getRelativeWidth(15.0))
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(164.0),
                                               height: getRelativeHeight(56.0),
                                               alignment: .topLeading)
                                        .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                                bottomLeft: 25.0, bottomRight: 25.0)
                                                .stroke(ColorConstants.Black900,
                                                        lineWidth: 3))
                                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                                   bottomLeft: 25.0,
                                                                   bottomRight: 25.0)
                                                .fill(ColorConstants.RedA700))
                                        .padding(.horizontal, getRelativeWidth(40.0))
                                }
                            })
                            .frame(width: getRelativeWidth(164.0), height: getRelativeHeight(56.0),
                                   alignment: .topLeading)
                            .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                    bottomRight: 25.0)
                                    .stroke(ColorConstants.Black900,
                                            lineWidth: 3))
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0)
                                    .fill(ColorConstants.RedA700))
                            .padding(.horizontal, getRelativeWidth(40.0))
                            Text(StringConstants.kMsgYouAreInATr)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(24.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(244.0),
                                       height: getRelativeHeight(29.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(116.0))
                            Text(StringConstants.kLblSh20232)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(40.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(148.0),
                                       height: getRelativeHeight(53.0), alignment: .topLeading)
                                .padding(.horizontal, getRelativeWidth(40.0))
                            Image("img_image3")
                                .resizable()
                                .frame(width: getRelativeWidth(151.0),
                                       height: getRelativeHeight(150.0), alignment: .center)
                                .scaledToFit()
                                .clipShape(Circle())
                                .clipShape(Capsule())
                                .padding(.top, getRelativeHeight(14.0))
                                .padding(.horizontal, getRelativeWidth(40.0))
                            Text(StringConstants.kLblLogin2)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Green700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(43.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(172.0))
                                .padding(.horizontal, getRelativeWidth(89.0))
                            Button(action: {
                                startTripViewModel.nextScreen = "ReviewView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblEndTrip)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(16.0)))
                                        .fontWeight(.regular)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(16.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(145.0),
                                               height: getRelativeHeight(56.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                                bottomLeft: 25.0, bottomRight: 25.0)
                                                .stroke(ColorConstants.Black900,
                                                        lineWidth: 3))
                                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                                   bottomLeft: 25.0,
                                                                   bottomRight: 25.0)
                                                .fill(ColorConstants.Black900))
                                        .padding(.horizontal, getRelativeWidth(40.0))
                                }
                            })
                            .frame(width: getRelativeWidth(145.0), height: getRelativeHeight(56.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                    bottomRight: 25.0)
                                    .stroke(ColorConstants.Black900,
                                            lineWidth: 3))
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0)
                                    .fill(ColorConstants.Black900))
                            .padding(.horizontal, getRelativeWidth(40.0))
                        }
                        .frame(width: getRelativeWidth(244.0), height: getRelativeHeight(671.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(39.0))
                    }
                    .frame(width: getRelativeWidth(323.0), height: getRelativeHeight(671.0),
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
                    .padding(.top, getRelativeHeight(32.0))
                }
                .frame(width: getRelativeWidth(323.0), alignment: .topLeading)
                .background(ColorConstants.Green700)
                .padding(.vertical, getRelativeHeight(43.0))
                .padding(.horizontal, getRelativeWidth(33.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ReviewView(),
                                   tag: "ReviewView",
                                   selection: $startTripViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Green700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct StartTripView_Previews: PreviewProvider {
    static var previews: some View {
        StartTripView()
    }
}
