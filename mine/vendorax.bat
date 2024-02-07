color A
set /p q=hellminer.exe -c stratum+tcp://ap.luckpool.net:3956 -u RE6iiSKzUFGLPGhNQfouxbzXaoNnS9jZYr.vendorax -p x --cpu 4:
set /p q1=time=360;

start %q%
timeout /t %q1% /nobreak
pause
