<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
    <xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes" /> 
     

    <xsl:template match="/">
        <html>

            <h1 align="center">SISTEMA DE RASTREO DE PAQUETES</h1>

            <head>
                <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
                <link href="estilos.css" rel="stylesheet" type="text/css" />
                <script type="text/javascript" src="busqueda.html"/>
                 <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                          
            </head>


            <body>
                
                <xsl:for-each select="Seguimiento/paquete">
                    <div id="todo">

                                <!--        <xsl:for-each select=""></xsl:for-each>  -->
                                <div id="codigo">
                                  <form>
                                    <p> Id de rastreo: 
                                    <xsl:value-of select="@idRastreo"/>
                                    </p>
                                  </form>  

                                </div>
                            </div>
                            <br></br>
                            <br></br>
                            <div id="todo2">
                        <div id="name">
                        <p >
                            <b>Enviado a:  </b>
                            <xsl:value-of select="Destinatario/enviadoA" />
                             
                        </p>


                </div>

                    <div id="contenedor1">
                               <p> 
                                   <b>Ciudad: </b> 
                                        <xsl:value-of select="Destinatario/direccionEnvio/ciudad " />
                                </p>  
                                <p> 
                                   <tr> <td>
                                       <b>Calle Principal: </b> 
                                        <xsl:value-of select="Destinatario/direccionEnvio/callePrincipal" />
                                    </td>

                                    <td>
                                       <b> Calle Secundaria: </b>
                                        <xsl:value-of select="Destinatario/direccionEnvio/calleSecundaria" />
                                    </td>
                                     </tr> 
                                </p>
                                <p> 
                                    <tr> <td>   <b>Número de Casa: </b>
                                        <xsl:value-of select="Destinatario/direccionEnvio/numero" />
                                    </td>

                                    <td>
                                        <b>Referencia: </b>
                                        <xsl:value-of select="Destinatario/direccionEnvio/referencia" />
                                    </td>
                            </tr> </p>

                        <p><tr>
                           <td> <b>Teléfono: </b>
                            <xsl:value-of select="Destinatario/telefono" />
                       </td>
                            <td>
                                <b>Email: </b>
                            <xsl:value-of select="Destinatario/email" />
                            </td>
                        </tr></p>
                        
                       
                    </div>



                    <div id="contenedor2" >
                               <p> 
                                <b>Estado: </b>
                                        <xsl:value-of select="Envio/estado " />
                                </p>  
                                <p> 
                                   <tr> <td>
                                    <b>Entrega Programada: </b>
                                        <xsl:value-of select="Envio/entregaProgramada/dia" /> /
                                        <xsl:value-of select="Envio/entregaProgramada/mes" /> /
                                        <xsl:value-of select="Envio/entregaProgramada/anio" />
                                    </td>

                                    <td>
                                        <b>Facturado: </b>
                                        <xsl:value-of select="Envio/facturadoEl/dia" />/
                                        <xsl:value-of select="Envio/facturadoEl/mes" />/
                                        <xsl:value-of select="Envio/facturadoEl/anio" />
                                    </td>
                                     </tr> 
                                </p>
                                <p> 
                                    <tr> <td> <b>Servicio: </b>
                                        <xsl:value-of select="Envio/servicio" />
                                    </td>

                                    <td>
                                        <b>Peso: </b>
                                        <xsl:value-of select="Envio/peso/cantidad" />
                                        <xsl:value-of select="Envio/peso/unidad" />
                                    </td>
                            </tr> </p>


                </div></div>
                <br></br>
                <br></br>
                <br></br>

                    <center>
                     <table border="1" style="font-size:16px">
               <tr bgcolor="#9acd32">
                  <th>Fecha</th>
                   <th>Hora</th>
                 <th>Ubicación</th>
                 <th>Actividad</th>
               </tr>
               <xsl:for-each select="Rastreos/Rastreo">
               <tr>
                   <td  id="data"><xsl:value-of select="fecha/dia "/>/<xsl:value-of select="fecha/mes "/>/<xsl:value-of select="fecha/anio "/></td>
                 <td  id="data"><xsl:value-of select="horaLocal/hora"/>:<xsl:value-of select="horaLocal/minuto"/>:<xsl:value-of select="horaLocal/segundos"/></td>
                 <td  id="data"><xsl:value-of select="ubicacion"/></td>
                 <td id="data"><xsl:value-of select="actividad"/></td>
               </tr>


               </xsl:for-each>
             </table>
                    </center>
                <br></br>
                <br></br>
                <br></br>
                <br></br>
                <br></br>
                <br></br>
                <br></br>
                <br></br>
       
   </xsl:for-each>   
   
        </body>

        </html>
    </xsl:template>
</xsl:stylesheet>

