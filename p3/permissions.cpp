// Author: Sean Davis
/*
#ifndef PERMISSIONS_H
  #define PERMISSIONS_H

typedef struct 
{
  short permissions;
} Permissions;

void createPermissions(Permissions *permissions, short originalPermissions, 
                       short umask);
void printPermissions(const Permissions *permissions);

#endif  // PERMISSIONS_H
*/

#ifndef PERMISSIONS_H
  #define PERMISSIONS_H
  using namespace std;
  
class Permissions{
  short permissions;
public:
  void print() const;
  void set(short originalPermissions, short umask);
}; // class Permissions

  void set(short originalPermissions, short umask);
  void print();
        
#endif //PERMISSIONS_H
