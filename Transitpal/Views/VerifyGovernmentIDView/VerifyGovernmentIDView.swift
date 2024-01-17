import SwiftUI

struct VerifyGovernmentIDView: View {
    @StateObject var verifyGovernmentIDViewModel = VerifyGovernmentIDViewModel()
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
                        .padding(.top, getRelativeHeight(99.0))
                        .padding(.horizontal, getRelativeWidth(40.0))
                    Text(StringConstants.kMsgPleaseTakeAP)
                        .font(FontScheme.kLeagueSpartanLight(size: getRelativeHeight(18.0)))
                        .fontWeight(.light)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(302.0), height: getRelativeHeight(95.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(12.0))
                        .padding(.horizontal, getRelativeWidth(40.0))
                    ZStack(alignment: .center) {
                        Image("img_image12")
                            .resizable()
                            .frame(width: getRelativeWidth(309.0), height: getRelativeHeight(308.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        ZStack(alignment: .leading) {
                            Image("img_screenshot202")
                                .resizable()
                                .frame(width: getRelativeWidth(235.0),
                                       height: getRelativeHeight(145.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.bottom, getRelativeHeight(17.0))
                                .padding(.horizontal, getRelativeWidth(12.0))
                            ZStack {}
                                .hideNavigationBar()
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
                        .padding(.horizontal, getRelativeWidth(25.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(309.0), height: getRelativeHeight(308.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(32.0))
                    .padding(.horizontal, getRelativeWidth(40.0))
                    Button(action: {
                        verifyGovernmentIDViewModel.nextScreen = "VerifyOrganizationIDView"
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
                                .padding(.vertical, getRelativeHeight(57.0))
                                .padding(.horizontal, getRelativeWidth(40.0))
                        }
                    })
                    .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(55.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 23.0, topRight: 23.0, bottomLeft: 23.0,
                                               bottomRight: 23.0)
                            .fill(ColorConstants.Bluegray600))
                    .padding(.vertical, getRelativeHeight(57.0))
                    .padding(.horizontal, getRelativeWidth(40.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: VerifyOrganizationIDView(),
                                   tag: "VerifyOrganizationIDView",
                                   selection: $verifyGovernmentIDViewModel.nextScreen,
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

struct VerifyGovernmentIDView_Previews: PreviewProvider {
    static var previews: some View {
        VerifyGovernmentIDView()
    }
}
