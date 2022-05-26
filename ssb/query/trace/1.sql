SELECT
    a.query_id,
    a.read_type,
    a.file_segment_range.1 AS file_segment_range-begin,
    a.file_segment_range.2 AS file_segment_range-end,
    a.total_requested_range.1 AS total_requested_range-begin,
    a.total_requested_range.2 AS total_requested_range-end,
    a.size,
    b.read_rows,
    b.read_bytes,
    b.query_duration_ms AS duration,
    b.memory_usage AS mem_usage
FROM system.filesystem_cache_log AS a
JOIN system.query_log AS b
ON a.query_id = b.query_id