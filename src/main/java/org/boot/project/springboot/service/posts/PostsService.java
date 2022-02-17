package org.boot.project.springboot.service.posts;

import lombok.RequiredArgsConstructor;
import org.boot.project.springboot.domain.posts.PostsRepository;
import org.boot.project.springboot.web.dto.PostsSaveRequestDto;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@RequiredArgsConstructor
@Service
public class PostsService {
    private final PostsRepository postsRepository;

    @Transactional
    public Long save(PostsSaveRequestDto requestDto) {
        return postsRepository.save(requestDto.toEntity()).getId();
    }
}
