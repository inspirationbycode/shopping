package com.shop.ws;

import com.shop.model.Series;
import com.shop.repository.SeriesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/seriesws")
public class SeriesService {
    @Autowired
    SeriesRepository seriesRepository;

    @RequestMapping(method = RequestMethod.GET)
    public Iterable<Series> getSeries() {
        return seriesRepository.findAll();
    }
}
