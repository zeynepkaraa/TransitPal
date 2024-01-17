import SwiftUI

struct StackorganizationtwoCell: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblUserName2)
                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(87.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                Text(StringConstants.kLblDjohn03)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Black900B2)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(55.0), height: getRelativeHeight(21.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(5.0))
                    .padding(.trailing, getRelativeWidth(10.0))
            }
            .frame(width: getRelativeWidth(87.0), height: getRelativeHeight(50.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(4.0))
            .padding(.trailing, getRelativeWidth(199.0))
            ZStack {}
                .hideNavigationBar()
                .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(29.0),
                       alignment: .leading)
                .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                        bottomRight: 7.0)
                        .stroke(ColorConstants.Bluegray100,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                           bottomRight: 7.0)
                        .fill(Color.clear.opacity(0.7)))
                .padding(.top, getRelativeHeight(23.5))
        }
        .hideNavigationBar()
        .frame(width: getRelativeWidth(290.0), alignment: .leading)
    }
}

/* struct StackorganizationtwoCell_Previews: PreviewProvider {

 static var previews: some View {
 			StackorganizationtwoCell()
 }
 } */
