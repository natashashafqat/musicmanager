package com.natasha.musicmanager.controllers;

import com.natasha.musicmanager.services.PlaylistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PlaylistController {

    @Autowired
    private PlaylistService playlistService;

    @GetMapping("/")
    public String listPlaylistsAndSongs(Model model) {
        model.addAttribute("playlists", playlistService.getAllPlaylists());
        return "index";
    }
}
