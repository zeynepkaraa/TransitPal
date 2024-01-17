import SwiftUI

struct UserProfileView: View {
    @StateObject var userProfileViewModel = UserProfileViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Group {
                        Text(StringConstants.kLblMyProfile)
                            .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Bluegray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(118.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(28.0))
                        Text(StringConstants.kLblDavidJohn23)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(24.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(36.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(26.0))
                            .padding(.leading, getRelativeWidth(10.0))
                        ZStack(alignment: .trailing) {
                            Image("img_stars")
                                .resizable()
                                .frame(width: getRelativeWidth(78.0),
                                       height: getRelativeHeight(17.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.trailing, getRelativeWidth(21.0))
                            Image("img_stars")
                                .resizable()
                                .frame(width: getRelativeWidth(78.0),
                                       height: getRelativeHeight(17.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(21.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(99.0), height: getRelativeHeight(17.0),
                               alignment: .trailing)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.horizontal, getRelativeWidth(37.0))
                        Text(StringConstants.kLblEmail)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(45.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(58.0))
                            .padding(.horizontal, getRelativeWidth(9.0))
                        Text(StringConstants.kMsgDoejohnGmailC)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900B2)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(147.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(6.0))
                            .padding(.horizontal, getRelativeWidth(9.0))
                        Text(StringConstants.kLblPhoneNumber)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(120.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(9.0))
                            .padding(.leading, getRelativeWidth(7.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kMsg1647487)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900B2)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(135.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(4.0))
                            .padding(.leading, getRelativeWidth(7.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kLblUserName2)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(89.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(16.0))
                            .padding(.horizontal, getRelativeWidth(9.0))
                    }
                    Group {
                        Text(StringConstants.kLblDjohn03)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900B2)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(57.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(5.0))
                            .padding(.horizontal, getRelativeWidth(9.0))
                        Text(StringConstants.kLblOrganization)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(105.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(13.0))
                            .padding(.horizontal, getRelativeWidth(9.0))
                        Text(StringConstants.kLblTmuUniversity)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900B2)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(101.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(10.0))
                        Text(StringConstants.kLblReviews)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(66.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(33.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kMsgGreatPalForT2)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900B2)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(43.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(9.0))
                            .padding(.leading, getRelativeWidth(5.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kLblReadMore)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Bluegray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(79.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(11.0))
                            .padding(.leading, getRelativeWidth(6.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                    }
                }
                .frame(width: getRelativeWidth(243.0), height: getRelativeHeight(557.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(6.0))
                .padding(.trailing, getRelativeWidth(10.0))
                Text("tabbar")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(323.0), height: getRelativeHeight(42.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(323.0), alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.vertical, getRelativeHeight(39.0))
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

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
