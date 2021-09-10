#pragma once
#include <QQuickPaintedItem>

class PaintedTest : public QQuickPaintedItem
{
    Q_OBJECT
    QML_ELEMENT
public:
    explicit PaintedTest(QQuickItem *parent = nullptr);

protected:
    void paint(QPainter *painter) override;
    void classBegin() override;
    void componentComplete() override;
    void geometryChanged(const QRectF &newGeometry, const QRectF &oldGeometry) override;
};

