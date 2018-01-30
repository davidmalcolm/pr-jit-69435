#include <dejagnu.h>

int main (int argc, const char **argv)
{
  int i;
  char buf[501];

  for (i = 0; i < 500; i++)
    {
      buf[i] = '0' + (i % 10);
      buf[i + 1] = '\0';
      pass ("%i: %s", i, buf);
    }
  return 0;
}
