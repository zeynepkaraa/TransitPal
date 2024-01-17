import SwiftUI

struct EditUserProfileView: View {
    @StateObject var editUserProfileViewModel = EditUserProfileViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgEditUserProfi)
                            .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Bluegray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(188.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(54.0))
                            .padding(.trailing, getRelativeWidth(54.0))
                        Text(StringConstants.kLblDavidJohn23)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(20.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(145.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(6.0))
                            .padding(.horizontal, getRelativeWidth(54.0))
                        Text(StringConstants.kLblEmail)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(45.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(70.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kMsgDoejohnGmailC)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .padding(.leading, getRelativeWidth(5.0))
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(292.0), height: getRelativeHeight(29.0),
                                   alignment: .topLeading)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Bluegray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(6.0))
                        Text(StringConstants.kLblPhoneNumber)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(120.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(21.0))
                            .padding(.leading, getRelativeWidth(4.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kMsg1647487)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .padding(.leading, getRelativeWidth(5.0))
                            .padding(.bottom, getRelativeHeight(5.0))
                            .foregroundColor(ColorConstants.Black900B2)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(292.0), height: getRelativeHeight(29.0),
                                   alignment: .topLeading)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Bluegray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(4.0))
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 1, id: \.self) { index in
                                        StackorganizationtwoCell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(292.0), alignment: .leading)
                        .padding(.top, getRelativeHeight(23.0))
                        Text(StringConstants.kLblDeleteAccount)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Bluegray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(110.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(37.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblSaveChanges)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .padding(.trailing, getRelativeWidth(14.0))
                                    .padding(.leading, getRelativeWidth(11.0))
                                    .padding(.vertical, getRelativeHeight(11.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(144.0),
                                           height: getRelativeHeight(46.0), alignment: .topLeading)
                                    .overlay(RoundedCorners(topLeft: 3.0, topRight: 3.0,
                                                            bottomLeft: 3.0, bottomRight: 3.0)
                                            .stroke(ColorConstants.Black900,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 3.0, topRight: 3.0,
                                                               bottomLeft: 3.0, bottomRight: 3.0)
                                            .fill(ColorConstants.Bluegray600))
                                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                                    .padding(.top, getRelativeHeight(83.0))
                                    .padding(.horizontal, getRelativeWidth(54.0))
                            }
                        })
                        .frame(width: getRelativeWidth(144.0), height: getRelativeHeight(46.0),
                               alignment: .topLeading)
                        .overlay(RoundedCorners(topLeft: 3.0, topRight: 3.0, bottomLeft: 3.0,
                                                bottomRight: 3.0)
                                .stroke(ColorConstants.Black900,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 3.0, topRight: 3.0, bottomLeft: 3.0,
                                                   bottomRight: 3.0)
                                .fill(ColorConstants.Bluegray600))
                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                        .padding(.top, getRelativeHeight(83.0))
                        .padding(.horizontal, getRelativeWidth(54.0))
                    }
                    .frame(width: getRelativeWidth(292.0), height: getRelativeHeight(613.0),
                           alignment: .center)
                    .padding(.leading, getRelativeWidth(17.0))
                    .padding(.trailing, getRelativeWidth(14.0))
                }
                .frame(width: getRelativeWidth(323.0), height: getRelativeHeight(613.0),
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
                .padding(.top, getRelativeHeight(69.0))
            }
            .frame(width: getRelativeWidth(323.0), alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.vertical, getRelativeHeight(65.0))
            .padding(.leading, getRelativeWidth(27.0))
            .padding(.trailing, getRelativeWidth(39.0))
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct EditUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditUserProfileView()
    }
}
