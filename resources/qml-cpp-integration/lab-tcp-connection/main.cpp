#include "tcpconnectionelement.h"
#include <QApplication>
#include <QQuickView>
#include <QUrl>
#include "runtype.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QQuickView view;
    RunType::Type type = RunType::Server;

    if (argc == 2 ) {
        if ( qstrcmp( argv[1],"server" ) == 0 )
            type = RunType::Server;
        else if ( qstrcmp( argv[1],"client" ) == 0 )
            type = RunType::Client;
        else
            qFatal("Please specify either client or server");
    }
    else
        type = RunType().getRunType();

    if ( type == RunType::Client )
        view.setSource(QUrl("qrc:///Client.qml"));
    else
        view.setSource(QUrl("qrc:///Server.qml"));

    view.show();
    return app.exec();
}
