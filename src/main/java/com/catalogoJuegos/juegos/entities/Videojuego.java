package com.catalogoJuegos.juegos.entities;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.Date;

@Entity
@Table(name="Videojuego")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Videojuego {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private long id;
    @NotEmpty(message="El titulo no debe estar vacio")
    @Column(name="titulo")
    private String titulo;
    @Size(min=10, max=100,message="La descripcion debe ser entre 10 a 100 caracteres")
    @Column(name="descripcion")
    private String descripcion;

    @Column(name="imagen")
    private String imagen;
    @Min(value=50, message="El precio debe tener un minimo de 50")
    @Max(value=10000, message="El precio debe ser menor a 10000")

    @Column(name="precio")
    private float precio;
    @Min(value=1, message="El stock debe tener un minimo de 1")
    @Max(value=1000, message="El stock debe ser menor a 100")
    @Column(name="stock")
    private int stock;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @NotNull(message="La fecha no puede ir vacia")
    @PastOrPresent(message="Debe ser igual o menor a la fecha de hoy")
    @Column(name="fecha_lanzamiento")
    private Date fechaLanzamiento;

    @Column(name="activo")
    private boolean activo = true;

    @NotNull(message="Se requiere el estudio")
    @ManyToOne(fetch =FetchType.EAGER)
    @JoinColumn(name="fk_estudio", nullable=false)
    private Estudio estudio;

    @NotNull(message="Se requiere la categoria")
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="fk_categoria", nullable = false)
    private Categoria categoria;
}
