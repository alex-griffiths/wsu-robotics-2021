#include <stdio.h>
#include <stdlib.h>

using namespace::std;

int main() {
	int i = 0;

	while (i < 7) {

		system("rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '{linear: {x: 1.1, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 1.0}}'");
	
		i++;
	}

	return 0;
}
