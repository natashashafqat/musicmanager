package com.natasha.musicmanager.repositories;

import com.natasha.musicmanager.models.Playlist;
import org.springframework.data.jpa.repository.JpaRepository;

import java.math.BigInteger;

public interface PlaylistRepository extends JpaRepository<Playlist, BigInteger> {
}
