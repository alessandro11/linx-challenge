//Timer
//Inicializa a contagem
void tStartTimer(stopWatch *timer) 
{
	QueryPerformanceCounter(&timer->start); 
}

//Converte o tempo computado pelo stopWatch para segundos
double tLIToSecs(LARGE_INTEGER *L) 
{
	LARGE_INTEGER frequency;
	QueryPerformanceFrequency(&frequency);
	return ((double)L->QuadPart /(double)frequency.QuadPart);
}
