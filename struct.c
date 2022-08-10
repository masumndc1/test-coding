#include <time.h>
#include <stdbool.h>
#include <stdio.h>

bool leapyear(unsigned year) {
 /* 
        All years that are divisible by 4 are leap years,
 *      unless they start a new century, provided they
 *      are not divisible by 400. 
 *      */

   return !(year % 4) && ((year % 100) || !(year % 400));
}

#define DAYS_BEFORE (int const[12]) {	        \
[0] = 0, [1] = 31, [2] = 59, [3] = 90, 		\
[4] = 120, [5] = 151, [6] = 181, [7]= 212,	\
[8] = 243, [9] = 273, [10] = 304, [11] = 334,	\
}

struct tm day_of_the_year (struct tm t) {
   t.tm_yday += DAYS_BEFORE[t.tm_mon] + t.tm_mday - 1;
   if ((t.tm_mon > 1) && leapyear(t.tm_year+1900))
       ++t.tm_yday;
   return t;
}

int 
main (void) 
{
   typedef int calArray[9];

   printf("\n");
   printf("a struct example\n");

   struct timespec {
       time_t tv_sec;
       long tv_nsec;
   };

   // this is the example of nested struct type variable

   struct person { 
      char name[256];
      struct stardate { 
          struct tm date;
          struct timespec precision; 
      } bdate;
   };

   //typedef struct birdStruct birdStruct;
   
   struct birdStruct { 
       char const* jay; 
       char const* magpie; 
       char const* raven; 
       char const* chough;
   };

   struct birdStruct const aName = { 
       .chough = "Henry",
       .raven = "Lissy",
       .magpie = "Frau",
       .jay = "joe",
   };

   printf("print a birdname %s\n", aName.chough);

   struct tm today = {
      .tm_year = 2022-1900, 
      .tm_mon = 4-1,
      .tm_mday = 3, 
      .tm_hour = 10,
      .tm_min = 0, 
      .tm_sec = 47,
   };

   
   today = day_of_the_year(today);

   printf("this year is %d, next year will be %d\n",
           today.tm_year+1900, today.tm_year+1900+1);
   printf("day of the year is %d\n", today.tm_yday);

   printf("\n");
   return 0;
}
