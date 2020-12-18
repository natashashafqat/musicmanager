package com.natasha.musicmanager.services;

import com.natasha.musicmanager.models.Playlist;
import com.natasha.musicmanager.repositories.PlaylistRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PlaylistService {

    @Autowired
    private PlaylistRepository playlistRepository;

    public Iterable<Playlist> getAllPlaylists() {
        return playlistRepository.findAll();
    }
}
