# dock-ovpn

## Inicializar servidor OpenVPN
```
./server_init.sh
```
Nos va a pedir la clave para el CA, es muy importante RECORDARLA

## Crear nuevo user
```
./client_new.sh USERNAME [ nopass ]
```
Usando como segundo parametro "nopass" el user se crea sin contraseÃa

## Eliminar user
```
./client_del.sh USERNAME
```

## Obtener ovpn file para un user
```
./client_get.sh USERNAME
```
Nos devuelve por stdout el ovpn file para el usuario, se puede combinar con el pipe > para escribirlo en un archivo

