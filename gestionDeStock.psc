Algoritmo 
	Dimensionar titulo[100] 
	Dimensionar cantidad[100] 
	Dimensionar fecha[100] 
	Dimensionar id[100]
	
	indiceDeVector=4
	id[1]=1
	titulo[1]="Producto1"
	cantidad[1]=10
	fecha[1]="1-1-1"
	id[2]=2
	titulo[2]="Producto2"
	cantidad[2]=10
	fecha[2]="2-2-2"
	id[3]=3
	titulo[3]="Producto3"
	cantidad[3]=15
	fecha[3]="3-3-3"
	id[4]=4
	titulo[4]="Producto44"
	cantidad[4]=20
	fecha[4]="4-4-4"
	
	Definir variable Como Entero
	Repetir
		
		Escribir "Seleccione una opcion del Menu de inico: "
		Escribir "1 - Para agregar un Producto al inventario"
		Escribir "2 - Para eliminar o quitar un producto del inventario"
		Escribir "3 - Para realizar movimientos de stock"
		Escribir "4 - Para mostrar el inventario disponible. "
		Escribir "5 - Para salir de la app"
		leer variable
		
		
		Si variable=1 Entonces
			Mostrar "voy a agregar productos"
			indiceDeVector=indiceDeVector+1
			Escribir "INGRESE EL TITULO: "
			Leer titulo[indiceDeVector]
			Escribir "INGRESE LA CANTIDAD: "
			Leer cantidad[indiceDeVector]
			Escribir "INGRESE LA FECHA"
			Leer fecha[indiceDeVector]
			id[indiceDeVector]=indiceDeVector
			Si indiceDeVector>1 Entonces
				Para i=1 Hasta indiceDeVector  Hacer
					
					Si id[indiceDeVector]=id[indiceDeVector] Entonces
						id[indiceDeVector]=indiceDeVector+1
					fin si
				Fin Para
				
			Fin Si
		SiNo
			Si variable=2 Entonces
				Escribir  " que tarea queres eliminar? recorda que para realizar esta accion necesitas ingresar su numero identificador: "
				leer eliminar
				Para i=1 Hasta indiceDeVector Hacer
					Si eliminar<=id[i] Entonces
						x=i+1
						id[i]=id[x]
						titulo[i]=titulo[x]
						cantidad[i]=cantidad[x]
						fecha[i]=fecha[x]
					Fin Si
				Fin Para
				Mostrar "Tarea " eliminar " eliminada correctamente!!"
				indiceDeVector=indiceDeVector-1
			SiNo
				Si variable=3 Entonces
					Escribir "Que producto queres buscar, ingresa el titulo: "
					leer buscar
					
					Para i=1 Hasta indiceDeVector Hacer
						Si buscar=titulo[i] Entonces
							Mostrar titulo[i]
							Mostrar cantidad[i]
							Mostrar fecha[i]
							Mostrar "Su codigo identificador es: " id[i]
							
							Mostrar "Para agregar unidades al stock ingresa 1, o para retirar unidades del stock ingresa 2 "
							leer stock
							
							Si stock=1 Entonces
								mostrar"Cuantas unidades queres agregar?: "
								leer unidades
								cantidad[i]=cantidad[i] + unidades
							SiNo
								Si stock=2 Entonces
									mostrar"Cuantas unidades queres retirar?: "
									leer unidades
									cantidad[i]=cantidad[i] - unidades
								SiNo
									mostrar"Elegi una opcion correcta"
								Fin Si
							Fin Si
						Fin Si
					Fin Para
					
				SiNo
					Si variable=4 Entonces
						Mostrar "-----------"
						mostrar "voy a mostrar todas las tareas"
						Mostrar "-----------"
						Para i=1 Hasta indiceDeVector Hacer
							Mostrar titulo[i]
							Mostrar "Disponibles: ", cantidad[i]
							Mostrar "Fecha: ",fecha[i]
							Mostrar "Su codigo identificador es: " id[i]
							Mostrar "------------------"
						Fin Para
					SiNo
						Si variable>5 Entonces
							Mostrar "Estas ingresando un numero que no corresponde a las opciones del menu, ingresa otro."
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Fin Si
		
	Hasta Que variable=5
FinAlgoritmo
