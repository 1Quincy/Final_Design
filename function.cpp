#include "function.h"
#include "QFont"
#include "QHeaderView"

Function::Function() {}

bool Function::createTable(const QStringList &list , QTableWidget *tableWidget)
{
    //清除表中内容
    tableWidget->setRowCount(0);   // 将行数设置为0
    tableWidget->setColumnCount(0); // 将列数设置为0

    QStringList headStr = list;
    tableWidget->setColumnCount(headStr.count());   //设置列数
    //概念 item
    for(int i = 0 ;i<headStr.count();i++){
        QTableWidgetItem * item = new QTableWidgetItem(headStr[i]);
        //设置字体
        QFont font = item->font();
        font.setBold(true);
        font.setPointSize(12);
        font.setFamily("微软雅黑");
        item->setFont(font);
        item->setForeground(Qt::blue);
        //设置为表头
        tableWidget->setHorizontalHeaderItem(i,item);

    }
    //调整列宽的调整模式
    auto *headView = tableWidget->horizontalHeader();

    headView->setSectionResizeMode(QHeaderView::Stretch);   //自动伸展
    //headView->setSectionResizeMode(QHeaderView::ResizeToContents);   //自动调整列宽

    return true;
}
