# 📊 Análisis de Ingresos y Satisfacción

## 📌 Introducción
Este análisis explora los datos de un supermercado para identificar patrones de ingresos, comportamiento de compra y satisfacción del cliente. Utilizamos herramientas de análisis de datos para responder preguntas clave sobre las ventas, los clientes y sus preferencias.

## 📈 Preguntas y Respuestas

### 💰 ¿Cuál es el ingreso total generado?
El ingreso total generado es **307,587.38**.

---

### 🌍 ¿Cómo varía el ingreso entre las diferentes sucursales y ciudades?
| Sucursal | Ciudad      | Ingresos  |
|----------|------------|------------|
| C        | Naypyitaw  | 105,303.53 |
| A        | Yangon     | 101,143.21 |
| B        | Mandalay   | 101,140.64 |

🔹 No hay una gran diferencia en los ingresos entre las ciudades y las sucursales.

---

### 💳 ¿Qué método de pago es el más utilizado por los clientes?
| Método de pago  | Cantidad |
|----------------|---------|
| E-wallet      | 345     |
| Efectivo      | 344     |
| Tarjeta de crédito | 311 |

🔹 **E-wallet** es el método de pago más utilizado.

---

### 🛍️ ¿Qué líneas de productos generan más ingresos?
| Línea de productos       | Ingresos  |
|--------------------------|------------|
| Food and Beverages       | 53,471.28  |
| Sports and Travel        | 52,497.93  |
| Electronic Accessories   | 51,750.03  |
| Fashion Accessories      | 51,719.90  |
| Home and Lifestyle       | 51,297.06  |
| Health and Beauty        | 46,851.18  |

🔹 Las categorías **Food and Beverages** y **Sports and Travel** generan los mayores ingresos.

---

### 📊 ¿Qué relación hay entre el precio unitario y las calificaciones de los clientes?
La relación entre el precio unitario y la calificación del cliente es variada:
- Hay productos con precios altos y calificaciones altas.
- También hay productos económicos con buenas calificaciones.
- La mayoría de las calificaciones son **mayores a 6** cuando los precios superan los 30.
- Existen excepciones donde productos caros tienen calificaciones bajas.

🔹 En general, **no hay una correlación fuerte**, pero los productos con precios moderados a altos tienden a tener mejores calificaciones.

---

### 👥 ¿Qué tipo de cliente compra más y cuánto gastan en promedio?
| Tipo de cliente | Cantidad de compras | Ingreso promedio |
|----------------|--------------------|----------------|
| Member        | 2,785               | 312.18        |
| Normal        | 2,725               | 302.97        |

🔹 Los clientes **con membresía** compran más y gastan un poco más en promedio.

---

### 👨‍👩‍👧‍👦 ¿Existen diferencias en los patrones de compra según el género?
| Género | Cantidad de compras | Ingresos |
|--------|--------------------|------------|
| Femenino | 2,869              | 159,888.50 |
| Masculino | 2,641              | 147,698.88 |

🔹 Las mujeres **compran y gastan más** que los hombres.

#### 🔍 Distribución por género y tipo de cliente:
| Género  | Tipo de Cliente | Cantidad | Ingreso Promedio |
|---------|----------------|----------|------------------|
| Femenino | Member        | 1,492    | 321.65          |
| Femenino | Normal        | 1,377    | 316.41          |
| Masculino | Member       | 1,293    | 301.89          |
| Masculino | Normal       | 1,348    | 290.52          |

🔹 Los **clientes femeninos con membresía** son los que más gastan.

---

### ⭐ ¿Cuál es la calificación promedio de satisfacción del cliente?
| Tipo de Cliente | Calificación Promedio |
|----------------|--------------------|
| Normal        | 7.01               |
| Member        | 6.94               |

🔹 Curiosamente, los clientes **sin membresía** dejan calificaciones ligeramente más altas.

## 🏁 Conclusión
- El supermercado genera **más de 307 mil en ingresos**, con **ventas bien distribuidas** entre las sucursales.
- **E-wallet** es el método de pago más popular.
- Las mujeres compran y gastan más que los hombres.
- **Los clientes con membresía gastan más**, pero califican el servicio un poco más bajo.
- No hay una **correlación clara** entre el precio unitario y las calificaciones.

## 🚀 Notas Finales
Este análisis se realizó utilizando **Power BI** y análisis exploratorio de datos. Se podría complementar con visualizaciones más detalladas o técnicas de machine learning para identificar tendencias futuras.

📌 *¡Si te gustó este análisis, no olvides darle ⭐ en GitHub!*
