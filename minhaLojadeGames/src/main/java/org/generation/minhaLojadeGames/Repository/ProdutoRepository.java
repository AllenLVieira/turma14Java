package org.generation.minhaLojadeGames.Repository;

import java.util.List;

import org.generation.minhaLojadeGames.Model.Produto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProdutoRepository extends JpaRepository<Produto, Long> {
	public List<Produto> findAllByNomeProdutoContainingIgnoreCase(String nomeProduto);
}
