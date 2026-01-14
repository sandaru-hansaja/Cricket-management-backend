package com.example.cricketApplication.repository;


import com.example.cricketApplication.models.MatchSummary;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MatchSummaryRepository extends JpaRepository<MatchSummary, Long> {
    // You can add custom query methods if needed

    List<MatchSummary> findByMatchMatchId(Long matchId);

 

    @Query(value = """
    SELECT
        t.team_id,
        t.`under` AS team_name,
        COUNT(DISTINCT m.match_id) AS matches_played,
        COUNT(ms.id) AS innings_played,
        SUM(ms.runs) AS total_runs,
        SUM(ms.wickets) AS total_wickets,
        SUM(ms.overs) AS total_overs
    FROM teams t
    JOIN matches m ON m.team_id = t.team_id
    JOIN match_summary ms ON ms.match_id = m.match_id
    WHERE t.`under` = :under
    GROUP BY t.team_id, t.`under`
    """, nativeQuery = true)
    List<Object[]> getTeamMatchStats(@Param("under") String under);



    @Query(value = """
                SELECT
                    m.match_id,
                    m.date,
                    m.division,
                    m.venue,
                    m.match_captain,
                    m.opposition,
                    m.type AS match_type,
                    COUNT(ms.id) AS innings_played,
                    SUM(ms.runs) AS total_runs,
                    SUM(ms.wickets) AS total_wickets,
                    SUM(ms.overs) AS total_overs
                FROM matches m
                JOIN match_summary ms ON ms.match_id = m.match_id
                JOIN teams t ON t.team_id = m.team_id
                WHERE t.`under` = :under
                GROUP BY m.match_id, m.date, m.division, m.venue, m.match_captain, m.opposition, m.type
                ORDER BY m.date DESC
                """, nativeQuery = true)
                List<Object[]> getMatchByMatchStats(@Param("under") String under);

}








