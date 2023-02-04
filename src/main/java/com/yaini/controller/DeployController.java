package com.yaini.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DeployController {

	@GetMapping
	public ResponseEntity<String> hello() {

		return new ResponseEntity<>("hello", HttpStatus.OK);
	}
}
