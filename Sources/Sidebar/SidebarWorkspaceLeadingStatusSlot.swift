import SwiftUI
import AppKit

struct SidebarWorkspaceLeadingStatusSlot: View {
    let showsBadge: Bool
    let showsSpinner: Bool
    let unreadCount: Int
    let side: CGFloat
    let spinnerSide: CGFloat
    let badgeFont: Font
    let badgeFillColor: Color
    let badgeTextColor: Color
    let spinnerColor: NSColor
    let spinnerTooltip: String

    var body: some View {
        HStack(spacing: showsBadge && showsSpinner ? 4 : 0) {
            if showsSpinner {
                SidebarWorkspaceLoadingSpinner(
                    side: spinnerSide,
                    color: spinnerColor,
                    tooltip: spinnerTooltip
                )
            }
            if showsBadge {
                SidebarWorkspaceUnreadBadge(
                    unreadCount: unreadCount,
                    side: side,
                    font: badgeFont,
                    fillColor: badgeFillColor,
                    textColor: badgeTextColor
                )
            }
        }
        .frame(height: max(side, spinnerSide))
    }
}
