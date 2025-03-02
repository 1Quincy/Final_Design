#include "dialogpersoninfo.h"
#include "ui_dialogpersoninfo.h"
#include "QDir"

DialogPersonInfo::DialogPersonInfo(QWidget *parent)
    : QDialog(parent)
    , ui(new Ui::DialogPersonInfo)
{
    ui->setupUi(this);
    Init();
}

DialogPersonInfo::~DialogPersonInfo()
{
    delete ui;
}

void DialogPersonInfo::Init()
{
    QString no = "工号：" + usr.getNo();
    ui->labelNo->setText(no);
    QString name = "姓名：" + usr.getUsername();
    ui->labelName->setText(name);
    QString role = "角色：" + usr.getRole();
    ui->labelRole->setText(role);
    QString department = "部门：" + usr.getDepartment();
    ui->labelDepartment->setText(department);
    QString position = "职位：" + usr.getPosition();
    ui->labelPosition->setText(position);
    /*QString Path = QCoreApplication::applicationDirPath();  //获取exe文件的路径
    QDir dir(Path);
    dir.cdUp();
    dir.cdUp();
    //qDebug()<<dir.absolutePath();
    QString photo = dir.absolutePath()+ "/QQOldPIC/" + usr.getPhotograph();*/

    QString photo =  usr.getPhotograph();


    QImage image;   //添加图片
    image.load(photo);
    ui->labelPhoto->setPixmap(QPixmap::fromImage(image));
    ui->labelPhoto->resize(QSize(image.width(),image.height()));

}
