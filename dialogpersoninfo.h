#ifndef DIALOGPERSONINFO_H
#define DIALOGPERSONINFO_H

#include <QDialog>
#include "mysql.h"
#include "userinfo.h"

namespace Ui {
class DialogPersonInfo;
}

class DialogPersonInfo : public QDialog
{
    Q_OBJECT

public:
    explicit DialogPersonInfo(QWidget *parent = nullptr);
    ~DialogPersonInfo();

private:
    Ui::DialogPersonInfo *ui;
    void Init();

   // MySql *mysql = NULL;
};

#endif // DIALOGPERSONINFO_H
