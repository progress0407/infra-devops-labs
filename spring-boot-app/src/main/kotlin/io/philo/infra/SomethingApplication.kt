package io.philo.infra

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class SomethingApplication

fun main(args: Array<String>) {
	runApplication<SomethingApplication>(*args)
}
