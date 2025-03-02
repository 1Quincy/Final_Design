#ifndef FUNCTION_H
#define FUNCTION_H
#include "QStringList"
#include "QTableWidget"

class Function
{
public:
    Function();

    bool createTable(const QStringList &list , QTableWidget *tableWidget);
};

#endif // FUNCTION_H
