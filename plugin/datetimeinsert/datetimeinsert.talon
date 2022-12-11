date insert: insert(user.time_format("%Y-%m-%d"))
date insert UTC: insert(user.time_format_utc("%Y-%m-%d"))
timestamp insert: insert(user.time_format("%Y-%m-%d %H:%M:%S"))
timestamp insert high resolution: insert(user.time_format("%Y-%m-%d %H:%M:%S.%f"))
timestamp insert UTC: insert(user.time_format_utc("%Y-%m-%d %H:%M:%S"))
timestamp insert UTC high resolution:
    insert(user.time_format_utc("%Y-%m-%d %H:%M:%S.%f"))

# Custom without 'insert':
date:
    insert(user.time_format("%Y-%m-%d"))
date UTC:
    insert(user.time_format_utc("%Y-%m-%d"))
timestamp:
    insert(user.time_format("%Y-%m-%d %H:%M:%S"))
timestamp high resolution:
    insert(user.time_format("%Y-%m-%d %H:%M:%S.%f"))
timestamp UTC:
    insert(user.time_format_utc("%Y-%m-%d %H:%M:%S"))
timestamp UTC high resolution:
    insert(user.time_format_utc("%Y-%m-%d %H:%M:%S.%f"))
