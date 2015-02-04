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

class Permissions 
{
  short permissions;
  
public:

  void set(short originalPermissions, short umask) const;
  void print() const;

};
#endif  // PERMISSIONS_H
