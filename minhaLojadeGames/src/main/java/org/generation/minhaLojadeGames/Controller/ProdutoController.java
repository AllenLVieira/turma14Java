package org.generation.minhaLojadeGames.Controller;

import java.util.List;

import org.generation.minhaLojadeGames.Model.Produto;
import org.generation.minhaLojadeGames.Repository.ProdutoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/produtos")
@CrossOrigin("*")
public class ProdutoController {
	@Autowired
	private ProdutoRepository repositorio;

	@GetMapping
	public ResponseEntity<List<Produto>> getAll() {
		return ResponseEntity.ok(repositorio.findAll());
	}

	@GetMapping("/{id}")
	public ResponseEntity<Produto> getById(@PathVariable long id) {
		return repositorio.findById(id).map(r -> ResponseEntity.ok(r)).orElse(ResponseEntity.notFound().build());
	}

	// G1: eu, rafa, vinicius, gustavo, thiago
	@GetMapping("nomeproduto/{nomeProduto}")
	public ResponseEntity<List<Produto>> getById(@PathVariable String nomeProduto) {
		return ResponseEntity.ok(repositorio.findAllByNomeProdutoContainingIgnoreCase(nomeProduto));
	}

	@PostMapping
	public ResponseEntity<Produto> post(@RequestBody Produto p) {
		return ResponseEntity.status(HttpStatus.CREATED).body(repositorio.save(p));
	}

	@PutMapping
	public ResponseEntity<Produto> put(@RequestBody Produto p) {
		return ResponseEntity.status(HttpStatus.OK).body(repositorio.save(p));
	}

	@DeleteMapping("/{id}")
	public void delete(@PathVariable long id) {
		repositorio.deleteById(id);
	}
}
