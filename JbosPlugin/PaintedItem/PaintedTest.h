#ifndef PAINTEDTEST_H
#define PAINTEDTEST_H

#include <QQuickPaintedItem>
#include <QPainter>

class PaintedTest : public QQuickPaintedItem
{
    Q_OBJECT
public:
    explicit PaintedTest(QQuickItem *parent = nullptr);

protected:
    void paint(QPainter *painter) override;
    void classBegin() override;
    void componentComplete() override;
    void geometryChanged(const QRectF &newGeometry, const QRectF &oldGeometry) override;
};

#endif // PAINTEDTEST_H
