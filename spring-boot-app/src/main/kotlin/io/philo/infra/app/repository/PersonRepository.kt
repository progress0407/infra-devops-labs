package io.philo.infra.app.repository

import io.philo.infra.app.entity.PersonEntity
import org.springframework.data.jpa.repository.JpaRepository

interface PersonRepository: JpaRepository<PersonEntity, Long> {
}