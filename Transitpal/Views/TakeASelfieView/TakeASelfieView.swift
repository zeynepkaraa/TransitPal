import SwiftUI

struct TakeASelfieView: View {
    @StateObject var takeASelfieViewModel = TakeASelfieViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        VStack {
                            Text(StringConstants.kMsgSmileYouReO)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Bluegray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(231.0),
                                       height: getRelativeHeight(25.0), alignment: .topLeading)
                                .padding(.horizontal, getRelativeWidth(17.0))
                            Text(StringConstants.kMsgTakeASelfieS)
                                .font(FontScheme.kLeagueSpartanLight(size: getRelativeHeight(18.0)))
                                .fontWeight(.light)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(159.0),
                                       height: getRelativeHeight(46.0), alignment: .center)
                                .padding(.top, getRelativeHeight(15.0))
                                .padding(.horizontal, getRelativeWidth(17.0))
                            ZStack(alignment: .center) {
                                Image("img_6ade39422de242f")
                                    .resizable()
                                    .frame(width: getRelativeWidth(266.0),
                                           height: getRelativeHeight(307.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Button(action: {}, label: {
                                    Image("img_group29")
                                })
                                .frame(width: getRelativeWidth(44.0),
                                       height: getRelativeHeight(43.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 22.0, topRight: 22.0,
                                                           bottomLeft: 22.0, bottomRight: 22.0)
                                        .fill(ColorConstants.Black900))
                                .padding(.top, getRelativeHeight(254.0))
                                .padding(.horizontal, getRelativeWidth(111.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(266.0), height: getRelativeHeight(307.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(49.0))
                            .padding(.leading, getRelativeWidth(17.0))
                            .padding(.trailing, getRelativeWidth(12.0))
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblUsePhoto)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(16.0)))
                                        .fontWeight(.regular)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(15.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(295.0),
                                               height: getRelativeHeight(55.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 23.0, topRight: 23.0,
                                                                   bottomLeft: 23.0,
                                                                   bottomRight: 23.0)
                                                .fill(ColorConstants.Bluegray600))
                                        .padding(.top, getRelativeHeight(79.0))
                                }
                            })
                            .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(55.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 23.0, topRight: 23.0,
                                                       bottomLeft: 23.0, bottomRight: 23.0)
                                    .fill(ColorConstants.Bluegray600))
                            .padding(.top, getRelativeHeight(79.0))
                        }
                        .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(577.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(12.0))
                    }
                    .frame(width: getRelativeWidth(323.0), height: getRelativeHeight(577.0),
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
                    .padding(.top, getRelativeHeight(71.0))
                }
                .frame(width: getRelativeWidth(323.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.vertical, getRelativeHeight(101.0))
                .padding(.horizontal, getRelativeWidth(33.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: MatchedProfileView(),
                                   tag: "MatchedProfileView",
                                   selection: $takeASelfieViewModel.nextScreen,
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

struct TakeASelfieView_Previews: PreviewProvider {
    static var previews: some View {
        TakeASelfieView()
    }
}
