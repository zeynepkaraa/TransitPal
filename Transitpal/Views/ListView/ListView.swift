import SwiftUI

struct ListView: View {
    @StateObject var listViewModel = ListViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblRequests)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(20.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(96.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                        ZStack(alignment: .bottomTrailing) {
                            HStack {
                                Text(StringConstants.kMsgSh2023GreatPa)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(139.0),
                                           height: getRelativeHeight(54.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(5.0))
                                Image("img_stars_yellow_300")
                                    .resizable()
                                    .frame(width: getRelativeWidth(100.0),
                                           height: getRelativeHeight(20.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(78.0))
                                    .padding(.trailing, getRelativeWidth(4.0))
                            }
                            .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(73.0),
                                   alignment: .topLeading)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Bluegray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.bottom, getRelativeHeight(15.0))
                            Text(StringConstants.kLblAccept)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(15.0)))
                                .fontWeight(.medium)
                                .padding(.leading, getRelativeWidth(4.0))
                                .padding(.vertical, getRelativeHeight(5.0))
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(64.0),
                                       height: getRelativeHeight(29.0), alignment: .topLeading)
                                .overlay(RoundedCorners(topLeft: 3.0, topRight: 3.0,
                                                        bottomLeft: 3.0,
                                                        bottomRight: 3.0)
                                        .stroke(ColorConstants.Black900,
                                                lineWidth: 1))
                                .background(ColorConstants.Green100)
                                .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                                .padding(.top, getRelativeHeight(59.0))
                                .padding(.leading, getRelativeWidth(183.0))
                            Text(StringConstants.kLblDecline)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(15.0)))
                                .fontWeight(.medium)
                                .padding(.leading, getRelativeWidth(4.0))
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(64.0),
                                       height: getRelativeHeight(29.0), alignment: .topLeading)
                                .overlay(RoundedCorners(topLeft: 3.0, topRight: 3.0,
                                                        bottomLeft: 3.0,
                                                        bottomRight: 3.0)
                                        .stroke(ColorConstants.Black900,
                                                lineWidth: 1))
                                .background(ColorConstants.Gray400)
                                .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                                .padding(.top, getRelativeHeight(59.0))
                                .padding(.leading, getRelativeWidth(254.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(88.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(17.0))
                        .padding(.trailing, getRelativeWidth(4.0))
                        Text(StringConstants.kMsgPalsOnTheSam)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(20.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(215.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(28.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 1, id: \.self) { index in
                                        NameCell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(331.0), alignment: .center)
                        .padding(.top, getRelativeHeight(11.0))
                    }
                    .frame(width: getRelativeWidth(332.0), height: getRelativeHeight(431.0),
                           alignment: .leading)
                }
                .frame(width: getRelativeWidth(332.0), height: getRelativeHeight(431.0),
                       alignment: .leading)
                VStack {}
                    .frame(width: getRelativeWidth(332.0), height: getRelativeHeight(42.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(297.0))
            }
            .frame(width: getRelativeWidth(332.0), alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.vertical, getRelativeHeight(19.0))
            .padding(.leading, getRelativeWidth(31.0))
            .padding(.trailing, getRelativeWidth(27.0))
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
