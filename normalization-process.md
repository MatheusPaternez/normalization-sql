In this project, I will show how to normalize a table.

| Empno | Deptcode | Deptlocation   | Name             | Job                    | hiredate   | salary    |
|-------|----------|----------------|------------------|------------------------|------------|-----------|
| 1001  | 3D       | Sidokumpul     | Benjamin Miguet  | Programmer IV          | 2019-10-25 | 133608.91 |
| 1002  | 1C       | Changhua       | Biddy Coppock.   | Health Coach II        | 2016-12-09 | 135302.24 |
| 1003  | 4B       | Lilla Edet     | Desmond Ogbourne | Senior Cost Accountant | 2020-03-24 | 55991.73  |
| 1004  | 1A       | Lemery         | Marita Dubery    | Executive Secretary    | 2019-03-13 | 53720.04  |
| 1005  | 1C       | Changhua       | Meg Holleran     | Executive Secretary    | 2014-10-20 | 73794.5   |

As you can see, this table is denormalized, contain redundancy and should be normalized.

First of all, what is normalization? Normalization is the technique of organizing a database to minimize redundancy (duplicate data) and ensure logical data dependencies.

It has 3 huge steps: 1NF(Remove repeating groups, ensure atomic values), 
2NF(Remove partial dependencies (for composite keys)) 
and 3NF(Remove transitive dependencies).

First, let's define the candidate keys in the table:
__Empno__

Second, let's define the functional dependencies of the relation:
__Empno__ -> (Deptcode, Deptlocation, Name, Job, hiredate, salary)
Deptcode -> Deptlocation

Third, let's check if the determinants of the functional dependencies is not a candidate key, then, if so, the relation is not well formed.
__Empno__ -> Ok.
Deptcode -> NOT CANDIDATE!!!

so,
Relation not well formed.


Then, let's go to Third.1(Place the columns of the functional dependency in a new relation of their own):
DEPARTMENT : (Deptcode, Deptlocation)

Third.2(Make the determinant of the functional dependency in a new relation of their own):
DEPARTMENT : (__Deptcode__, Deptlocation)

Third.3(Leave a copy of the determinant as a foreign key in the original relation):
EMPLOYEE : (__Empno__, _Deptcode_, Name, Job, hiredate, salary)

Third.4(Create a referential integrity constraint between the original and the new relation):
Employee.Deptcode and Department.Deptcode (Department is the name of the new table/relation)

Fourth Step: If still exist some determinant that is not a candidate key, repeat step 3 until not.

So, the final table will be like that(With __Empno__ being the primary key, and _Deptcode_ the foreign key):

|__Empno__|_Deptcode_| Name             | Job                    | hiredate   | salary    |
|---------|----------|------------------|------------------------|------------|-----------|
|  1001   |    3D    | Benjamin Miguet  | Programmer IV          | 2019-10-25 | 133608.91 |
|  1002   |    1C    | Biddy Coppock.   | Health Coach II        | 2016-12-09 | 135302.24 |
|  1003   |    4B    | Desmond Ogbourne | Senior Cost Accountant | 2020-03-24 | 55991.73  |
|  1004   |    1A    | Marita Dubery    | Executive Secretary    | 2019-03-13 | 53720.04  |
|  1005   |    1C    | Meg Holleran     | Executive Secretary    | 2014-10-20 | 73794.5   |

And the new Department table will be like that(With the __Deptcode__ being the primary key), also I removed the last line, because we don't need no more, a primary key should not repeat, and makes sense if you think that it's the same data:

|__Deptcode__| Deptlocation   |
|------------|----------------|
|     3D     |   Sidokumpul   |
|     1C     |   Changhua     |
|     4B     |   Lilla Edet   |
|     1A     |   Lemery       |