import SwiftUI

struct ReviewView: View {
    @StateObject var reviewViewModel = ReviewViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .trailing, spacing: 0) {
                VStack {
                    VStack {
                        Text(StringConstants.kMsgLeaveAReview)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(24.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(221.0), height: getRelativeHeight(36.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(37.0))
                        Text(StringConstants.kLblSh20232)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(40.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Bluegray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(148.0), height: getRelativeHeight(60.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(37.0))
                        ZStack(alignment: .bottomTrailing) {
                            Image("img_image3")
                                .resizable()
                                .frame(width: getRelativeWidth(216.0),
                                       height: getRelativeHeight(215.0), alignment: .center)
                                .scaledToFit()
                                .clipShape(Circle())
                                .clipShape(Capsule())
                            Text(StringConstants.kLblAddFriend)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(13.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(3.0))
                                .padding(.vertical, getRelativeHeight(5.0))
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(78.0),
                                       height: getRelativeHeight(31.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 15.5, topRight: 15.5,
                                                        bottomLeft: 15.5, bottomRight: 15.5)
                                        .stroke(ColorConstants.Gray800,
                                                lineWidth: 1))
                                .background(ColorConstants.Orange200)
                                .padding(.top, getRelativeHeight(184.0))
                                .padding(.leading, getRelativeWidth(138.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(216.0), height: getRelativeHeight(215.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(23.0))
                        .padding(.horizontal, getRelativeWidth(37.0))
                        Text(StringConstants.kMsgClickOnTheSt)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(20.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(288.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(54.0))
                            .padding(.leading, getRelativeWidth(5.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Image("img_stars_yellow_300_17x100")
                            .resizable()
                            .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(17.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(12.0))
                            .padding(.horizontal, getRelativeWidth(95.0))
                        Text(StringConstants.kMsgWriteDownARe)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(20.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(216.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(19.0))
                            .padding(.horizontal, getRelativeWidth(37.0))
                        VStack {
                            Text(StringConstants.kMsgICouldnTHave)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(230.0),
                                       height: getRelativeHeight(82.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(18.0))
                                .padding(.horizontal, getRelativeWidth(34.0))
                        }
                        .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(140.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 30.0, topRight: 30.0, bottomLeft: 30.0,
                                                   bottomRight: 30.0)
                                .fill(ColorConstants.Bluegray100))
                        .padding(.top, getRelativeHeight(14.0))
                        Text(StringConstants.kLblPost)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .padding(.leading, getRelativeWidth(20.0))
                            .padding(.top, getRelativeHeight(4.0))
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(78.0), height: getRelativeHeight(31.0),
                                   alignment: .topLeading)
                            .overlay(RoundedCorners(topLeft: 15.5, topRight: 15.5, bottomLeft: 15.5,
                                                    bottomRight: 15.5)
                                    .stroke(ColorConstants.Bluegray600,
                                            lineWidth: 1))
                            .background(ColorConstants.Bluegray600)
                            .padding(.top, getRelativeHeight(16.0))
                            .padding(.horizontal, getRelativeWidth(37.0))
                    }
                    .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(701.0),
                           alignment: .center)
                    .padding(.leading, getRelativeWidth(14.0))
                    .padding(.trailing, getRelativeWidth(4.0))
                }
                .frame(width: getRelativeWidth(323.0), height: getRelativeHeight(701.0),
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
                .padding(.top, getRelativeHeight(43.0))
            }
            .frame(width: getRelativeWidth(323.0), alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(7.0))
            .padding(.bottom, getRelativeHeight(6.0))
            .padding(.horizontal, getRelativeWidth(33.0))
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView()
    }
}
