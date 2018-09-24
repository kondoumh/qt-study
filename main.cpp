#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "treeviewmodel.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    TreeViewModel mymodel;
    engine.rootContext()->setContextProperty("mymodel", &mymodel);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
