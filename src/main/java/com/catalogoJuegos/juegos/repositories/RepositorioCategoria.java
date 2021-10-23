package com.catalogoJuegos.juegos.repositories;

import com.catalogoJuegos.juegos.entities.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RepositorioCategoria extends JpaRepository<Categoria, Long>{

}
