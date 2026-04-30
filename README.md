# Caso 0: Simulación de Red MANET

Este proyecto consiste en la simulación de una red móvil ad-hoc (**MANET**) utilizando el framework **OMNeT++** junto con la biblioteca **INET**. El objetivo es analizar el comportamiento de nodos móviles y fijos en un entorno de red inalámbrica autoconfigurada.

## 🚀 Estructura del Proyecto

El proyecto está organizado en la carpeta `Prueba/`, que contiene los siguientes archivos principales:

- **`netdef.ned`**: Definición de la topología de la red (`ManetNet`). Incluye:
  - Un medio de radio (`Ieee80211ScalarRadioMedium`).
  - Un configurador IPv4.
  - Dos nodos fijos (`AdhocHost`).
  - Una cantidad parametrizable de nodos móviles (por defecto 25).
- **`netconf.ini`**: Archivo de configuración de la simulación donde se definen los parámetros de movilidad, protocolos de red y duración de los eventos.
- **`Makefile`**: Archivo para la compilación del proyecto en entornos C++/OMNeT++.

## 🛠️ Requisitos

Para ejecutar esta simulación, necesitarás tener instalado:

1. [OMNeT++](https://omnetpp.org/) (Versión compatible con INET).
2. [INET Framework](https://inet.omnetpp.org/).

## 💻 Ejecución

Una vez dentro del entorno de OMNeT++ y con la biblioteca INET importada:

1. Compila el proyecto:
   ```bash
   cd Prueba
   make
   ```
2. Ejecuta la simulación:
   ```bash
   ./Prueba -u Qtenv -f netconf.ini
   ```

## 📊 Detalles de la Red

La red simulada, denominada `ManetNet`, utiliza el estándar **IEEE 802.11** para la comunicación inalámbrica. Está diseñada para evaluar la conectividad entre `nodoFijo1` y `nodoFijo2` a través de una nube de `nodoMovil` que actúan como intermediarios dinámicos.

---
**Autor:** [Inak-Mendoza](https://github.com/Inak-Mendoza)