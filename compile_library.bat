@rem compile the library

@del /s *.a
call fbc -mt -g -exx -i .\lib -lib lib\testly\*.bas -x lib\libtestly.a
@dir lib\*.a
