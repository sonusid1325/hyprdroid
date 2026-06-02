import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Widgets
import qs.services
import qs.modules.common
import qs.modules.common.widgets

ContentPage {
    forceWidth: true

    ContentSection {
        icon: "box"
        title: Translation.tr("Distro")

        RowLayout {
            Layout.alignment: Qt.AlignHCenter
            spacing: 20
            Layout.topMargin: 10
            Layout.bottomMargin: 10
            IconImage {
                implicitSize: 80
                source: Quickshell.iconPath(SystemInfo.logo)
            }
            ColumnLayout {
                Layout.alignment: Qt.AlignVCenter
                // spacing: 10
                StyledText {
                    text: SystemInfo.distroName
                    font.pixelSize: Appearance.font.pixelSize.title
                }
                StyledText {
                    font.pixelSize: Appearance.font.pixelSize.normal
                    text: SystemInfo.homeUrl
                    textFormat: Text.MarkdownText
                    onLinkActivated: (link) => {
                        Qt.openUrlExternally(link)
                    }
                    PointingHandLinkHover {}
                }
            }
        }

        Flow {
            Layout.fillWidth: true
            spacing: 5

            RippleButtonWithIcon {
                materialIcon: "auto_stories"
                mainText: Translation.tr("Documentation")
                onClicked: {
                    Qt.openUrlExternally(SystemInfo.documentationUrl)
                }
            }
            RippleButtonWithIcon {
                materialIcon: "support"
                mainText: Translation.tr("Help & Support")
                onClicked: {
                    Qt.openUrlExternally(SystemInfo.supportUrl)
                }
            }
            RippleButtonWithIcon {
                materialIcon: "bug_report"
                mainText: Translation.tr("Report a Bug")
                onClicked: {
                    Qt.openUrlExternally(SystemInfo.bugReportUrl)
                }
            }
            RippleButtonWithIcon {
                materialIcon: "policy"
                materialIconFill: false
                mainText: Translation.tr("Privacy Policy")
                onClicked: {
                    Qt.openUrlExternally(SystemInfo.privacyPolicyUrl)
                }
            }

        }

    }

    ContentSection {
        icon: "info"
        title: Translation.tr("About Dotfiles")

        RowLayout {
            Layout.alignment: Qt.AlignHCenter
            spacing: 20
            Layout.topMargin: 10
            Layout.bottomMargin: 10

            CustomIcon {
                implicitWidth: 80
                implicitHeight: 80
                source: "github-symbolic.svg"
                colorize: true
                color: Appearance.colors.colOnSecondaryContainer
            }

            ColumnLayout {
                Layout.alignment: Qt.AlignVCenter
                
                StyledText {
                    text: Translation.tr("Hyprdroid")
                    font.pixelSize: Appearance.font.pixelSize.title
                }

                StyledText {
                    text: Translation.tr("Android theme based hyprland & quickshell dot files!!!")
                    font.pixelSize: Appearance.font.pixelSize.normal
                    wrapMode: Text.WordWrap
                    Layout.fillWidth: true
                }

                StyledText {
                    font.pixelSize: Appearance.font.pixelSize.normal
                    text: "[sonusid1325/hyprdroid](https://github.com/sonusid1325/hyprdroid)"
                    textFormat: Text.MarkdownText
                    onLinkActivated: (link) => {
                        Qt.openUrlExternally(link)
                    }
                    PointingHandLinkHover {}
                }
            }
        }

        Flow {
            Layout.fillWidth: true
            spacing: 5

            RippleButtonWithIcon {
                materialIcon: "favorite"
                mainText: Translation.tr("Sponsor")
                onClicked: {
                    Qt.openUrlExternally("https://github.com/sponsors/sonusid1325")
                }
            }
            RippleButtonWithIcon {
                materialIcon: "code"
                mainText: Translation.tr("Repository")
                onClicked: {
                    Qt.openUrlExternally("https://github.com/sonusid1325/hyprdroid")
                }
            }
        }
    }
}
