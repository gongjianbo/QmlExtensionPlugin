#include "PaintedTest.h"

PaintedTest::PaintedTest(QQuickItem *parent)
    : QQuickPaintedItem(parent)
{

}

void PaintedTest::paint(QPainter *painter)
{
    painter->drawText((width()-painter->fontMetrics().width("Painted Test"))/2,
                      (height()+painter->fontMetrics().height())/2,
                      "Painted Test");
}

void PaintedTest::classBegin()
{

}

void PaintedTest::componentComplete()
{

}

void PaintedTest::geometryChanged(const QRectF &newGeometry, const QRectF &oldGeometry)
{
    Q_UNUSED(newGeometry)
    Q_UNUSED(oldGeometry)
}
