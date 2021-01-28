package org.generation.minhaLojadeGames.Repository;

import java.util.List;

import org.generation.minhaLojadeGames.Model.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoriaRepository extends JpaRepository<Categoria, Long> {
	public List<Categoria> findAllByDescricaoCategoriaContainingIgnoreCase(String descricaoCategoria);
}
