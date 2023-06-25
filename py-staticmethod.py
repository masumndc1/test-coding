#!/usr/bin/env python3

class Dates:
    def __init__(self, date):
        self.date = date

    def getDate(self):
        return self.date

    def toDashDate(self, date):
        return date.replace("/", "-")


date = Dates("15-12-2016")
dateFromDB = "15/12/2016"
dateWithDash = date.toDashDate(dateFromDB)
# dateWithDash = Dates.toDashDate(dateFromDB)

if (date.getDate() == dateWithDash):
    print("Equal")
else:
    print("Unequal")
