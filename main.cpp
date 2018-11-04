#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickStyle>
#include "treeviewmodel.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QQuickStyle::setStyle("Material");

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    TreeViewModel mymodel;
    engine.rootContext()->setContextProperty("mymodel", &mymodel);

    engine.load(QUrl(QStringLiteral("qrc:/mainTabView.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
