package com.natasha.musicmanager.repositories;

import com.natasha.musicmanager.models.Song;
import org.springframework.data.jpa.repository.JpaRepository;

import java.math.BigInteger;

public interface SongRepository extends JpaRepository<Song, BigInteger> {
}
