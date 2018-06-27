#include <stdio.h>
#include <string>

extern "C" {
void __attribute__((weak)) fabcdef();
}

int main(void)
{  
        if (fabcdef) {
            fabcdef();
        }  

#if defined(__GNUC__)

	printf("__GNUC__ defined\n");

#endif

        return 0;  
}
