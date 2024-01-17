import SwiftUI

struct VerifyOrganizationIDView: View {
    @StateObject var verifyOrganizationIDViewModel = VerifyOrganizationIDViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text(StringConstants.kLblVerifyId)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(84.0), height: getRelativeHeight(25.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(88.0))
                        .padding(.horizontal, getRelativeWidth(44.0))
                    Text(StringConstants.kMsgChooseYourOrg)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(189.0), height: getRelativeHeight(19.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(27.0))
                        .padding(.horizontal, getRelativeWidth(44.0))
                    Picker(StringConstants.kLblTmuUniversity,
                           selection: $verifyOrganizationIDViewModel.groupeighteenPicker1) {
                        ForEach(verifyOrganizationIDViewModel.groupeighteenPicker1Values,
                                id: \.self) { value in
                            Text(value)
                        }
                    }
                    .foregroundColor(ColorConstants.Black900)
                    .font(.system(size: getRelativeHeight(15)))
                    .pickerStyle(MenuPickerStyle())
                    ZStack(alignment: .leading) {
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(247.0), height: getRelativeHeight(153.0),
                                   alignment: .bottomLeading)
                            .overlay(RoundedCorners(topLeft: 15.0, topRight: 15.0, bottomLeft: 15.0,
                                                    bottomRight: 15.0)
                                    .stroke(ColorConstants.WhiteA700,
                                            lineWidth: 2))
                            .background(RoundedCorners(topLeft: 15.0, topRight: 15.0,
                                                       bottomLeft: 15.0, bottomRight: 15.0)
                                    .fill(ColorConstants.Bluegray10066))
                            .padding(.top, getRelativeHeight(101.0))
                            .padding(.trailing, getRelativeWidth(41.0))
                        ZStack(alignment: .center) {
                            Image("img_image12")
                                .resizable()
                                .frame(width: getRelativeWidth(309.0),
                                       height: getRelativeHeight(308.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            ZStack(alignment: .leading) {
                                Image("img_screenshot202_153x241")
                                    .resizable()
                                    .frame(width: getRelativeWidth(241.0),
                                           height: getRelativeHeight(153.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(12.0))
                                    .padding(.bottom, getRelativeHeight(13.0))
                                    .padding(.leading, getRelativeWidth(11.0))
                                    .padding(.trailing, getRelativeWidth(8.0))
                                VStack {
                                    Text(StringConstants.kLblDoeJohn2)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(10.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(24.0),
                                               height: getRelativeWidth(24.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(48.0))
                                        .padding(.horizontal, getRelativeWidth(25.0))
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(57.0),
                                               height: getRelativeHeight(25.0), alignment: .leading)
                                        .background(ColorConstants.WhiteA700)
                                        .padding(.vertical, getRelativeHeight(3.0))
                                        .padding(.horizontal, getRelativeWidth(18.0))
                                }
                                .frame(width: getRelativeWidth(260.0),
                                       height: getRelativeHeight(178.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 15.0, topRight: 15.0,
                                                        bottomLeft: 15.0, bottomRight: 15.0)
                                        .stroke(ColorConstants.WhiteA700,
                                                lineWidth: 2))
                                .background(RoundedCorners(topLeft: 15.0, topRight: 15.0,
                                                           bottomLeft: 15.0, bottomRight: 15.0)
                                        .fill(ColorConstants.Bluegray10066))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(260.0), height: getRelativeHeight(178.0),
                                   alignment: .center)
                            .padding(.vertical, getRelativeHeight(65.0))
                            .padding(.leading, getRelativeWidth(23.0))
                            .padding(.trailing, getRelativeWidth(26.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(309.0), height: getRelativeHeight(308.0),
                               alignment: .leading)
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(309.0), height: getRelativeHeight(308.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(39.0))
                    .padding(.leading, getRelativeWidth(44.0))
                    .padding(.trailing, getRelativeWidth(37.0))
                    Button(action: {
                        verifyOrganizationIDViewModel.nextScreen = "VerifyPageView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kMsgSubmitForRevi)
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
                                .padding(.vertical, getRelativeHeight(64.0))
                                .padding(.horizontal, getRelativeWidth(44.0))
                        }
                    })
                    .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(55.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 23.0, topRight: 23.0, bottomLeft: 23.0,
                                               bottomRight: 23.0)
                            .fill(ColorConstants.Bluegray600))
                    .padding(.vertical, getRelativeHeight(64.0))
                    .padding(.horizontal, getRelativeWidth(44.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: VerifyPageView(),
                                   tag: "VerifyPageView",
                                   selection: $verifyOrganizationIDViewModel.nextScreen,
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

struct VerifyOrganizationIDView_Previews: PreviewProvider {
    static var previews: some View {
        VerifyOrganizationIDView()
    }
}
