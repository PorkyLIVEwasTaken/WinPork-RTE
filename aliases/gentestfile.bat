@echo off
echo User issued gentestfile %1 > C:\winpork-logs\gentestfilelog.winpork

@mkdir "C:\winpork\Generated Test Files"
@fsutil file createnew "C:\winpork\Generated Test Files\winpork.gtf" %1

echo Generated Test File of %1 bytes in C:\winpork\Generated Test Files