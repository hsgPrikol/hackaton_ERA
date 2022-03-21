#include "database.h"

Database::Database(QObject *parent) : QObject(parent)
{
    qDebug() << "Ecransndnasdnsa" << "select id from operator_view where spec like \"Про%\";";
}

int Database::getIndexProfile()
{
    return indexProfile;
}

void Database::setIndexProfile(int index)
{
    indexProfile = index;
}

QString Database::getText()
{
    return text;
}

void Database::setText(QString index)
{
    text = index;
}

QVector<int> Database::getCountFiltrID(const QString &filtr)
{
    QVector<int> count;
    QString selectCount= "select id from operator_view where spec like \"" + filtr + "%\";";
    QSqlQuery query;

    query.prepare(selectCount);
    query.exec();
    //    query.first();
    while (query.next())
        count.append(query.value(0).toString().toInt());

    qDebug() << count;

    return count;
}

int Database::getCountFiltr(const QString &filtr)
{
    int count;
    QString selectCount= "select count(id) from operator_view where spec like \"" + filtr + "%\";";
    QSqlQuery query;

    query.prepare(selectCount);
    query.exec();
    query.first();

    count = query.value(0).toString().toInt();

    qDebug() << count;

    return count;
}

QString Database::getHaracteristics(const QString &index)
{
    QString city;
    QString selectCity = "select university, degree, graduation_year, gpa, language_name FRom education_view e join language_view l on e.operator_id =" + index + " and l.operator_id=" + index + ";";
    qDebug() << selectCity;
    QSqlQuery query;

    query.prepare(selectCity);
    query.exec();
    query.first();
        city = "Университет " + query.value(0).toString();
        city = city + ". Имею степень " + query.value(1).toString();
        city = city +". Закончил в " + query.value(2).toString();
        city = city +". Средний балл в дипломе " +query.value(3).toString();
        city = city +". Знаю языки " +query.value(4).toString();

    qDebug() << city;

    return city;
}

QString Database::getHaracteristics1(const QString &index)
{

}

QString Database::getCity(const QString &index)
{
    QString city;
    QString selectCity = "select name from city where id = " + index + ";";
    QSqlQuery query;

    query.prepare(selectCity);
    query.exec();
    query.first();

    city = query.value(0).toString();

    qDebug() << city;

    return city;
}

QVector<QString> Database::getProfileData(const QString &index)
{
    QVector<QString> arrayProfileData;

    QString selectProfileData = "select * from operator_view where id = " + index + ";";

    QSqlQuery query;

    query.prepare(selectProfileData);

    query.exec();
    query.first();
    qDebug() << "111111111111111111111";
    arrayProfileData.append(query.value(1).toString());
    arrayProfileData.append(query.value(3).toString());
    //        qDebug() << "111111111111111111111";
    //    qDebug() << arrayProfileData[1];
    return arrayProfileData;
}

QVector<QString> Database::getSkills(const QString &index)
{
    QVector<QString> arraySkills;
    QString selectskills = "select skill_name from skill_view where operator_id = " + index + ";";
    QSqlQuery query;

    query.prepare(selectskills);
    query.exec();
    //  query.first();
    int i = 0;
    while (query.next())
    {

        arraySkills.append(query.value(0).toString());
        qDebug() << arraySkills[i];
        i++;
    }


    return arraySkills;
}

int Database::getCountID()
{
    int count;
    QString selectCount= "select count(id) from operator_view;";
    QSqlQuery query;

    query.prepare(selectCount);
    query.exec();
    query.first();

    count = query.value(0).toString().toInt();

    qDebug() << count;

    return count;
}

int Database::getCountSkills(const QString &index)
{
    int count;
    QString selectCount= "select count(operator_id) from skill_view where operator_id =" + index + ";";
    QSqlQuery query;

    query.prepare(selectCount);
    query.exec();
    query.first();

    count = query.value(0).toString().toInt();

    qDebug() << count;

    return count;
}

void Database::connectToDataBase()
{

}

bool Database::openDataBase()
{
    QSqlDatabase db = QSqlDatabase::addDatabase("QPSQL");
    db.setHostName("93.95.97.117");
    db.setDatabaseName("pisya");
    db.setPort(5432);

    db.setUserName("pisya");
    db.setPassword("pisya");
    if (db.open()){
        qDebug() << "info";
        return true;}
    else
        return false;
}

bool Database::restoreDataBase()
{
    if (this->openDataBase()){
        qDebug() << "Success open DB";
        return (this->createTable()) ? true : false;
    }
    else {
        qDebug() << "Error open DB";
        return false;
    }
}

void Database::closeDataBase()
{
    db.close();
}

bool Database::createTable()
{

}

bool Database::insertIntoTable(const QVariantList &variantList)
{

}

bool Database::insertIntoTable(const QString &fname, const QString &sname, const QString &nikname, const QString &weight, const QString &height)
{

}

bool Database::removeRecord(const int id)
{

}

void Database::test(const QString &strs)
{

}
