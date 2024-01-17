import SwiftUI

struct NameCell: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ZStack(alignment: .topTrailing) {
                Text(StringConstants.kMsgSh2023Commutin)
                    .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(284.0), height: getRelativeHeight(72.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(5.0))
                    .padding(.trailing, getRelativeWidth(37.0))
                Image("img_stars")
                    .resizable()
                    .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.bottom, getRelativeHeight(65.67))
                    .padding(.leading, getRelativeWidth(223.0))
                Image("img_stars")
                    .resizable()
                    .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.bottom, getRelativeHeight(65.67))
                    .padding(.leading, getRelativeWidth(244.0))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(88.0),
                   alignment: .leading)
            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0, bottomRight: 7.0)
                .stroke(ColorConstants.Bluegray100,
                        lineWidth: 1))
            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                       bottomRight: 7.0)
                    .fill(Color.clear.opacity(0.7)))
            .padding(.bottom, getRelativeHeight(13.0))
            Button(action: {}, label: {
                HStack(spacing: 0) {
                    Text(StringConstants.kLblRequest)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.bold)
                        .padding(.horizontal, getRelativeWidth(7.0))
                        .padding(.vertical, getRelativeHeight(5.0))
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(62.0), height: getRelativeHeight(29.0),
                               alignment: .topLeading)
                        .overlay(RoundedCorners(topLeft: 3.0, topRight: 3.0, bottomLeft: 3.0,
                                                bottomRight: 3.0)
                                .stroke(ColorConstants.Black900,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 3.0, topRight: 3.0, bottomLeft: 3.0,
                                                   bottomRight: 3.0)
                                .fill(ColorConstants.Gray301))
                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                        .padding(.top, getRelativeHeight(72.5))
                        .padding(.leading, getRelativeWidth(254.0))
                }
            })
            .frame(width: getRelativeWidth(62.0), height: getRelativeHeight(29.0),
                   alignment: .topLeading)
            .overlay(RoundedCorners(topLeft: 3.0, topRight: 3.0, bottomLeft: 3.0, bottomRight: 3.0)
                .stroke(ColorConstants.Black900,
                        lineWidth: 1))
            .background(RoundedCorners(topLeft: 3.0, topRight: 3.0, bottomLeft: 3.0,
                                       bottomRight: 3.0)
                    .fill(ColorConstants.Gray301))
            .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
            .padding(.top, getRelativeHeight(72.5))
            .padding(.leading, getRelativeWidth(254.0))
        }
        .hideNavigationBar()
        .frame(width: getRelativeWidth(326.0), alignment: .leading)
    }
}

/* struct NameCell_Previews: PreviewProvider {

 static var previews: some View {
 			NameCell()
 }
 } */
