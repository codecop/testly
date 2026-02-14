@rem compile the library

@del /s *.a
call fbc -lib -x lib\libtestly.a -i lib lib\testly\*.bas
@dir lib\*.a
