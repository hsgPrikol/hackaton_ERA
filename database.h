#ifndef DATABASE_H
#define DATABASE_H

#include <QObject>
#include <QSql>
#include <QFile>
#include <QSqlDatabase>
#include <QSqlQuery>
#include <QDebug>
#include <QSqlError>
#include <QVector>
#include <QSqlRecord>


class Database : public QObject
{
    Q_OBJECT
public:
    explicit Database(QObject *parent = nullptr);


    QSqlDatabase    db;
private:
    int indexProfile;
    QString text;

public slots:
    int getIndexProfile();
    void setIndexProfile(int index);

    QString getText();
    void setText(QString index);

    //filtr
    QVector<int> getCountFiltrID(const QString &filtr);
    int getCountFiltr(const QString &filtr);

    QString getHaracteristics(const QString &index);
    QString getHaracteristics1(const QString &index);



    QString getCity(const QString &index);
    QVector<QString> getProfileData(const QString &index);
    QVector<QString> getSkills(const QString &index);

    int getCountID();
    int getCountSkills(const QString &index);


    void connectToDataBase();
    bool openDataBase();
    bool restoreDataBase();
    void closeDataBase();
    bool createTable();
    bool insertIntoTable(const QVariantList& variantList);
    bool insertIntoTable(const QString &fname, const QString &sname, const QString &nikname, const QString &weight, const QString &height);
    bool removeRecord(const int id);

    void test(const QString &strs);

signals:

};

#endif // DATABASE_H
