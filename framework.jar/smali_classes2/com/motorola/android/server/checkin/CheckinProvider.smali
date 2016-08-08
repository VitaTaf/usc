.class public Lcom/motorola/android/server/checkin/CheckinProvider;
.super Landroid/content/ContentProvider;
.source "CheckinProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;,
        Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;,
        Lcom/motorola/android/server/checkin/CheckinProvider$OpenHelper;
    }
.end annotation


# static fields
.field private static final CHECKIN_INTENT:Ljava/lang/String; = "com.motorola.blur.service.blur.Actions.CHECKIN"

.field public static final CHECKIN_PRIVACY_OTA_EVENT_TAGS:Ljava/lang/String; = "CHECKIN_FAILURE,CHECKIN_SUCCESS,DEVICE_PROPERTIES,DEV_ATTRIBS:SW,MOT_CCE_STATS:CS_Notif_FFA,MOT_OTA:LOG,MOT_PRIVACY_PROFILE"

.field private static final CHECKIN_REQUEST_ID:Ljava/lang/String; = "com.motorola.blur.service.blur.checkin.request_id"

.field private static final CRASH_LIMIT:I = 0x19

.field private static final CRASH_SIZE:I = 0x4000

.field private static final DATABASE_FILENAME:Ljava/lang/String; = "checkin_mot.db"

.field private static final DATABASE_VERSION:I = 0x3

.field private static final DELETE_COUNT:I = 0x64

.field private static final EVENT_LIMIT:I = 0x3e8

.field private static final EVENT_SIZE:I = 0x2000

.field private static final EVENT_TAGS:Ljava/lang/String; = "."

.field public static final PRIV_BITFIELD:J = 0x1L

.field private static final PROCESS_TAGS:Ljava/lang/String; = "."

.field private static final PROPERTIES_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_CHECKIN_PROPERTIES"

.field private static final TAG:Ljava/lang/String; = "CheckinProvider"


# instance fields
.field private _allEventTagsAllowed:Z

.field private _allProcessTagsAllowed:Z

.field private volatile _checkinEventTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _checkinProcessTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _eventLimit:I

.field private final _eventLock:Ljava/lang/Object;

.field private _logLevel:I

.field private _privBitField:J

.field private _requestedCheckin:Z

.field private _storedEvents:I

.field private mEventInsertThread:Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mStatsLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 125
    iput-boolean v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_requestedCheckin:Z

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mStatsLock:Ljava/lang/Object;

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLock:Ljava/lang/Object;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    .line 142
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLimit:I

    .line 143
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_logLevel:I

    .line 147
    iput-boolean v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_allEventTagsAllowed:Z

    .line 148
    iput-boolean v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_allProcessTagsAllowed:Z

    .line 151
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_privBitField:J

    .line 823
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/server/checkin/CheckinProvider;[Landroid/content/ContentValues;I)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/server/checkin/CheckinProvider;
    .param p1, "x1"    # [Landroid/content/ContentValues;
    .param p2, "x2"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/server/checkin/CheckinProvider;->insertEvents([Landroid/content/ContentValues;I)V

    return-void
.end method

.method private checkPermissions(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1214
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 1215
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid query URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1218
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1219
    .local v0, "table":Ljava/lang/String;
    const-string v1, "properties"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_CHECKIN_PROPERTIES"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1222
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Cannot access checkin properties"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1224
    :cond_1
    return-void
.end method

.method private deleteFromEvents(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1175
    iget-object v4, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1177
    const/4 v0, 0x0

    .line 1178
    .local v0, "count":I
    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1179
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "events"

    invoke-virtual {v1, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1180
    iget v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    sub-int/2addr v5, v0

    iput v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    .line 1181
    iget v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    if-gez v5, :cond_0

    .line 1182
    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v5

    iput v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    .line 1184
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_requestedCheckin:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    :try_start_1
    monitor-exit v4

    .line 1189
    .end local v0    # "count":I
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v0

    .line 1186
    .restart local v0    # "count":I
    :catch_0
    move-exception v2

    .line 1187
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "CheckinProvider"

    const-string v6, "deleteFromEvents"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1188
    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v5

    iput v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    .line 1189
    monitor-exit v4

    move v0, v3

    goto :goto_0

    .line 1191
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getEventCount()I
    .locals 5

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 371
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 372
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "SELECT COUNT (_id) FROM events"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 373
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 374
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 379
    if-eqz v0, :cond_0

    .line 380
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 381
    const/4 v0, 0x0

    .line 384
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    return v3

    .line 379
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    if-eqz v0, :cond_2

    .line 380
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 381
    const/4 v0, 0x0

    .line 384
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    :goto_1
    const/4 v3, -0x1

    goto :goto_0

    .line 376
    :catch_0
    move-exception v2

    .line 377
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "CheckinProvider"

    const-string v4, "getEventCount"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    if-eqz v0, :cond_2

    .line 380
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 381
    const/4 v0, 0x0

    goto :goto_1

    .line 379
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 380
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 381
    const/4 v0, 0x0

    :cond_3
    throw v3
.end method

.method private initEventCount()V
    .locals 2

    .prologue
    .line 391
    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLock:Ljava/lang/Object;

    monitor-enter v1

    .line 392
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    .line 393
    monitor-exit v1

    .line 394
    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initTags(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 6
    .param p1, "commaSeparatedTags"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 233
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 234
    .local v0, "beginEscape":Z
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 237
    .local v4, "tag":Ljava/lang/StringBuffer;
    if-nez p1, :cond_0

    .line 263
    :goto_0
    return-object v3

    .line 241
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 242
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 244
    .local v1, "ch":C
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    if-nez v0, :cond_1

    .line 245
    const/4 v0, 0x1

    .line 241
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 247
    :cond_1
    if-eqz v0, :cond_2

    .line 248
    const/4 v0, 0x0

    .line 249
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 251
    :cond_2
    const/16 v5, 0x2c

    if-ne v1, v5, :cond_3

    .line 252
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v4, Ljava/lang/StringBuffer;

    .end local v4    # "tag":Ljava/lang/StringBuffer;
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .restart local v4    # "tag":Ljava/lang/StringBuffer;
    goto :goto_2

    .line 255
    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 260
    .end local v1    # "ch":C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private insertCrash(Landroid/content/ContentValues;)J
    .locals 10
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1084
    :try_start_0
    const-string v5, "data"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 1085
    .local v0, "crashSize":I
    const/16 v5, 0x4000

    if-le v0, v5, :cond_0

    .line 1087
    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CRASHES_TRUNCATED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/motorola/android/provider/Checkin;->updateStats(Landroid/content/ContentResolver;Lcom/motorola/android/provider/Checkin$Stats$Tag;ID)Landroid/net/Uri;

    .line 1089
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too big: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    .end local v0    # "crashSize":I
    :catch_0
    move-exception v4

    .line 1108
    .local v4, "t":Ljava/lang/Throwable;
    const-string v5, "CheckinProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error inserting crash: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    const-wide/16 v2, -0x1

    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_0
    return-wide v2

    .line 1093
    .restart local v0    # "crashSize":I
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CRASHES_REPORTED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/motorola/android/provider/Checkin;->updateStats(Landroid/content/ContentResolver;Lcom/motorola/android/provider/Checkin$Stats$Tag;ID)Landroid/net/Uri;

    .line 1097
    iget-object v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1098
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, -0x1

    .line 1099
    .local v2, "id":J
    const-string v5, "DELETE FROM crashes WHERE _id IN (SELECT _id FROM crashes ORDER BY _id DESC LIMIT -1 OFFSET 24)"

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1104
    const-string v5, "crashes"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    .line 1105
    goto :goto_0
.end method

.method private insertEvent(Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 10
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "queryType"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, -0x1

    .line 641
    const-string v3, "tag"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "tag":Ljava/lang/String;
    const-string v3, "value"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 655
    .local v2, "value":Ljava/lang/String;
    const-string v3, "date"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 656
    const-string v3, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 659
    :cond_0
    const/4 v0, 0x0

    .line 661
    .local v0, "name":Ljava/lang/String;
    const-string v3, "name"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 662
    const-string v3, "name"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 664
    const-string v3, "name"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 669
    :cond_1
    const-string v3, "eventTags"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 672
    invoke-direct {p0, v1, v0}, Lcom/motorola/android/server/checkin/CheckinProvider;->isInsertAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 690
    :cond_2
    :goto_0
    return-wide v8

    .line 675
    :cond_3
    const-string v3, "processTags"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 677
    iget-boolean v3, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_allProcessTagsAllowed:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinProcessTags:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 678
    const-string v3, "CheckinProvider"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 679
    const-string v3, "CheckinProvider"

    const-string v4, "insertEvents Process tag not allowed: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 687
    :cond_4
    const-string v3, "privacy"

    iget-wide v4, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_privBitField:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 688
    iget-object v3, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mEventInsertThread:Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;

    invoke-virtual {v3, p1}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->queueInsert(Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method private insertEvents([Landroid/content/ContentValues;I)V
    .locals 18
    .param p1, "events"    # [Landroid/content/ContentValues;
    .param p2, "numEvents"    # I

    .prologue
    .line 732
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 734
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 735
    .local v2, "askForCheckin":Z
    const/4 v7, 0x0

    .line 736
    .local v7, "eventsDropped":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLock:Ljava/lang/Object;

    monitor-enter v13

    .line 739
    :try_start_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    const/4 v14, -0x1

    if-eq v12, v14, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    add-int v12, v12, p2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLimit:I

    if-lt v12, v14, :cond_2

    .line 741
    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    .line 744
    .local v6, "eventsCurrent":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DELETE FROM events WHERE _id IN (SELECT _id FROM events ORDER BY date DESC LIMIT -1 OFFSET "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLimit:I

    add-int/lit8 v14, v14, -0x64

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 749
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    .line 750
    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    const/4 v14, -0x1

    if-eq v12, v14, :cond_1

    .line 751
    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    sub-int v7, v6, v12

    .line 754
    :cond_1
    const/4 v2, 0x1

    .line 755
    const-string v12, "CheckinProvider"

    const/4 v14, 0x3

    invoke-static {v12, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 756
    const-string v12, "CheckinProvider"

    const-string v14, "insertEvents removed events %d left"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    .end local v6    # "eventsCurrent":I
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 777
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move/from16 v0, p2

    if-ge v8, v0, :cond_4

    .line 778
    const-string v12, "events"

    const/4 v14, 0x0

    aget-object v15, p1, v8

    invoke-virtual {v4, v12, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 779
    .local v10, "rowId":J
    const-wide/16 v14, 0x0

    cmp-long v12, v10, v14

    if-ltz v12, :cond_3

    .line 780
    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 760
    .end local v8    # "i":I
    .end local v10    # "rowId":J
    :catch_0
    move-exception v9

    .line 761
    .local v9, "ioe":Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_2
    const-string v12, "CheckinProvider"

    const-string v14, "SQLiteDiskIOException:"

    invoke-static {v12, v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    goto :goto_0

    .line 805
    .end local v9    # "ioe":Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 763
    :catch_1
    move-exception v3

    .line 764
    .local v3, "ce":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_3
    const-string v12, "CheckinProvider"

    const-string v14, "SQLiteDatabaseCorruptException:"

    invoke-static {v12, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    goto :goto_0

    .line 766
    .end local v3    # "ce":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_2
    move-exception v5

    .line 767
    .local v5, "e":Landroid/database/sqlite/SQLiteException;
    const-string v12, "CheckinProvider"

    const-string v14, "SQLiteException:"

    invoke-static {v12, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 768
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    goto :goto_0

    .line 769
    .end local v5    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_3
    move-exception v5

    .line 771
    .local v5, "e":Ljava/lang/Exception;
    const-string v12, "CheckinProvider"

    const-string v14, "Exception:"

    invoke-static {v12, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 772
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 783
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "i":I
    :cond_4
    :try_start_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 799
    .end local v8    # "i":I
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 805
    :goto_3
    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 807
    if-eqz v7, :cond_5

    .line 808
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/motorola/android/provider/Checkin$Stats$Tag;->EVENTS_DROPPED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const/4 v14, 0x0

    int-to-double v0, v7

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v12, v13, v14, v0, v1}, Lcom/motorola/android/provider/Checkin;->updateStats(Landroid/content/ContentResolver;Lcom/motorola/android/provider/Checkin$Stats$Tag;ID)Landroid/net/Uri;

    .line 812
    :cond_5
    if-eqz v2, :cond_6

    .line 813
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->requestCheckin()V

    .line 815
    :cond_6
    return-void

    .line 784
    :catch_4
    move-exception v9

    .line 785
    .restart local v9    # "ioe":Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_7
    const-string v12, "CheckinProvider"

    const-string v14, "SQLiteDiskIOException:"

    invoke-static {v12, v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 786
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    goto :goto_2

    .line 787
    .end local v9    # "ioe":Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_5
    move-exception v3

    .line 788
    .restart local v3    # "ce":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string v12, "CheckinProvider"

    const-string v14, "SQLiteDatabaseCorruptException:"

    invoke-static {v12, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 789
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    goto :goto_2

    .line 790
    .end local v3    # "ce":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_6
    move-exception v5

    .line 791
    .local v5, "e":Landroid/database/sqlite/SQLiteException;
    const-string v12, "CheckinProvider"

    const-string v14, "SQLiteException:"

    invoke-static {v12, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 792
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    goto :goto_2

    .line 793
    .end local v5    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_7
    move-exception v5

    .line 795
    .local v5, "e":Ljava/lang/Exception;
    const-string v12, "CheckinProvider"

    const-string v14, "Exception:"

    invoke-static {v12, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    goto :goto_2

    .line 800
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v5

    .line 802
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v12, "CheckinProvider"

    const-string v14, "Exception:"

    invoke-static {v12, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 803
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method

.method private insertStats(Landroid/content/ContentValues;)J
    .locals 22
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->mStatsLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 999
    :try_start_0
    const-string v3, "tag"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1000
    .local v20, "tag":Ljava/lang/String;
    if-nez v20, :cond_0

    .line 1001
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tag required:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1072
    .end local v20    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1004
    .restart local v20    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v14, 0x0

    .line 1007
    .local v14, "cursor":Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1008
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    const-string v4, "stats"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "count"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "sum"

    aput-object v7, v5, v6

    const-string v6, "tag=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v20, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1013
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1015
    :cond_1
    const-string v3, "stats"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-wide v16

    .line 1069
    if-eqz v14, :cond_2

    .line 1070
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-wide v16

    .line 1018
    :cond_3
    const/4 v3, 0x0

    :try_start_3
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1019
    .local v16, "id":J
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1020
    .local v12, "count":I
    const/4 v3, 0x2

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 1022
    .local v18, "sum":D
    const-string v3, "count"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 1023
    .local v13, "countAdd":Ljava/lang/Integer;
    if-eqz v13, :cond_4

    .line 1024
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v12, v3

    .line 1026
    :cond_4
    const-string v3, "sum"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v15

    .line 1027
    .local v15, "sumAdd":Ljava/lang/Double;
    if-eqz v15, :cond_5

    .line 1028
    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double v18, v18, v4

    .line 1030
    :cond_5
    if-gtz v12, :cond_8

    const-wide/16 v4, 0x0

    cmpl-double v3, v18, v4

    if-nez v3, :cond_8

    .line 1032
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1034
    :try_start_4
    const-string v3, "stats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1037
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/provider/Checkin$Stats;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1042
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1044
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1046
    const-wide/16 v16, -0x1

    .line 1069
    .end local v16    # "id":J
    if-eqz v14, :cond_6

    .line 1070
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_6
    monitor-exit v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1044
    .restart local v16    # "id":J
    :catchall_1
    move-exception v3

    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1069
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "count":I
    .end local v13    # "countAdd":Ljava/lang/Integer;
    .end local v15    # "sumAdd":Ljava/lang/Double;
    .end local v16    # "id":J
    .end local v18    # "sum":D
    :catchall_2
    move-exception v3

    if-eqz v14, :cond_7

    .line 1070
    :try_start_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1048
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "count":I
    .restart local v13    # "countAdd":Ljava/lang/Integer;
    .restart local v15    # "sumAdd":Ljava/lang/Double;
    .restart local v16    # "id":J
    .restart local v18    # "sum":D
    :cond_8
    :try_start_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1050
    if-eqz v13, :cond_9

    .line 1051
    :try_start_a
    const-string v3, "count"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1052
    :cond_9
    const-string v3, "stats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1055
    if-eqz v15, :cond_a

    .line 1056
    const-string v3, "sum"

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1057
    :cond_a
    const-string v3, "stats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1060
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1062
    :try_start_b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1069
    if-eqz v14, :cond_b

    .line 1070
    :try_start_c
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_b
    monitor-exit v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 1062
    :catchall_3
    move-exception v3

    :try_start_d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
.end method

.method private isInsertAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    .line 694
    const/4 v1, 0x1

    .line 695
    .local v1, "result":Z
    iget-boolean v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_allEventTagsAllowed:Z

    if-nez v2, :cond_0

    .line 696
    iget-object v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinEventTags:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 697
    iget-object v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinEventTags:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;

    .line 698
    .local v0, "events":Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;
    if-nez v0, :cond_2

    .line 699
    const-string v2, "CheckinProvider"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 700
    const-string v2, "CheckinProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInsertAllowed - all events with the tag allowed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    .end local v0    # "events":Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;
    :cond_0
    :goto_0
    const-string v2, "CheckinProvider"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 716
    const-string v2, "CheckinProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInsertAllowed - The Event with tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returns"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_1
    return v1

    .line 703
    .restart local v0    # "events":Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;
    :cond_2
    invoke-virtual {v0, p2}, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;->isAllowed(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 707
    .end local v0    # "events":Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;
    :cond_3
    const-string v2, "CheckinProvider"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 708
    const-string v2, "CheckinProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInsertAllowed - Event tag not allowed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readAndSetProperties()V
    .locals 19

    .prologue
    .line 407
    const/4 v11, 0x0

    .line 408
    .local v11, "cursor":Landroid/database/Cursor;
    const-string v3, "CheckinProvider"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    const-string v3, "CheckinProvider"

    const-string v4, "readAndSetProperties()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 412
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "properties"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 414
    const-string v3, "tag"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 415
    .local v17, "tag":I
    const-string v3, "value"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 417
    .local v18, "value":I
    const/4 v14, 0x0

    .line 419
    .local v14, "initializedEventTags":Z
    :cond_1
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 421
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 422
    .local v15, "sTag":Ljava/lang/String;
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 423
    .local v16, "sValue":Ljava/lang/String;
    const-string v3, "CheckinProvider"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 424
    const-string v3, "CheckinProvider"

    const-string v4, "readAndSetProperties %s:%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    const/4 v6, 0x1

    aput-object v16, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_2
    sget-object v3, Lcom/motorola/android/provider/Checkin$Properties$Tag;->EVENT_LIMIT:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-virtual {v3}, Lcom/motorola/android/provider/Checkin$Properties$Tag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_6

    .line 429
    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 430
    .local v13, "i":I
    const/16 v3, 0x3e8

    if-le v13, v3, :cond_1

    .line 431
    const-string v3, "CheckinProvider"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 432
    const-string v3, "CheckinProvider"

    const-string v4, "readAndSetProperties %s:%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    const/4 v6, 0x1

    aput-object v16, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_3
    const-string v3, "CheckinProvider"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 435
    const-string v3, "CheckinProvider"

    const-string v4, "setting log event limit: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_4
    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLimit:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 439
    .end local v13    # "i":I
    :catch_0
    move-exception v12

    .line 440
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CheckinProvider"

    const-string v4, "failed setting EVENT_LIMIT:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 526
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v14    # "initializedEventTags":Z
    .end local v15    # "sTag":Ljava/lang/String;
    .end local v16    # "sValue":Ljava/lang/String;
    .end local v17    # "tag":I
    .end local v18    # "value":I
    :catch_1
    move-exception v12

    .line 527
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "CheckinProvider"

    const-string v4, "failed to read and set properties"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 529
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 531
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_1
    return-void

    .line 444
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "initializedEventTags":Z
    .restart local v15    # "sTag":Ljava/lang/String;
    .restart local v16    # "sValue":Ljava/lang/String;
    .restart local v17    # "tag":I
    .restart local v18    # "value":I
    :cond_6
    :try_start_4
    sget-object v3, Lcom/motorola/android/provider/Checkin$Properties$Tag;->PROCESS_TAGS:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-virtual {v3}, Lcom/motorola/android/provider/Checkin$Properties$Tag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 445
    if-nez v16, :cond_b

    .line 446
    const-string v3, "CheckinProvider"

    const-string v4, "Value provided for Checkin.Properties.Tag.PROCESS_TAGS is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_7
    :goto_2
    sget-object v3, Lcom/motorola/android/provider/Checkin$Properties$Tag;->EVENT_TAGS:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-virtual {v3}, Lcom/motorola/android/provider/Checkin$Properties$Tag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 465
    if-nez v16, :cond_10

    .line 466
    const-string v3, "CheckinProvider"

    const-string v4, "Value provided for Checkin.Properties.Tag.EVENT_TAGS is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_8
    :goto_3
    sget-object v3, Lcom/motorola/android/provider/Checkin$Properties$Tag;->LOG_LEVEL:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-virtual {v3}, Lcom/motorola/android/provider/Checkin$Properties$Tag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    if-eqz v3, :cond_15

    .line 489
    :try_start_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 490
    .restart local v13    # "i":I
    const/4 v3, 0x2

    if-gt v3, v13, :cond_1

    const/4 v3, 0x7

    if-gt v13, v3, :cond_1

    .line 491
    const-string v3, "CheckinProvider"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 492
    const-string v3, "CheckinProvider"

    const-string v4, "setting log level: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_9
    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_logLevel:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 496
    .end local v13    # "i":I
    :catch_2
    move-exception v12

    .line 497
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v3, "CheckinProvider"

    const-string v4, "failed setting LOG_LEVEL:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 529
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v14    # "initializedEventTags":Z
    .end local v15    # "sTag":Ljava/lang/String;
    .end local v16    # "sValue":Ljava/lang/String;
    .end local v17    # "tag":I
    .end local v18    # "value":I
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3

    .line 448
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "initializedEventTags":Z
    .restart local v15    # "sTag":Ljava/lang/String;
    .restart local v16    # "sValue":Ljava/lang/String;
    .restart local v17    # "tag":I
    .restart local v18    # "value":I
    :cond_b
    :try_start_7
    const-string v3, "CheckinProvider"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 449
    const-string v3, "CheckinProvider"

    const-string v4, "setting checkin.process_tags: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/motorola/android/server/checkin/CheckinProvider;->initTags(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinProcessTags:Ljava/util/HashSet;

    .line 456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinProcessTags:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinProcessTags:Ljava/util/HashSet;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinProcessTags:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinProcessTags:Ljava/util/HashSet;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 458
    :cond_e
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_allProcessTagsAllowed:Z

    goto/16 :goto_2

    .line 460
    :cond_f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_allProcessTagsAllowed:Z

    goto/16 :goto_2

    .line 468
    :cond_10
    const-string v3, "CheckinProvider"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 469
    const-string v3, "CheckinProvider"

    const-string v4, "setting checkin.event_tags: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/android/server/checkin/CheckinProvider;->initEventTags(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinEventTags:Ljava/util/Map;

    .line 477
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinEventTags:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinEventTags:Ljava/util/Map;

    const-string v4, "."

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinEventTags:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinEventTags:Ljava/util/Map;

    const-string v4, "."

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 479
    :cond_13
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_allEventTagsAllowed:Z

    .line 484
    :goto_4
    const/4 v14, 0x1

    goto/16 :goto_3

    .line 481
    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_allEventTagsAllowed:Z

    goto :goto_4

    .line 501
    :cond_15
    sget-object v3, Lcom/motorola/android/provider/Checkin$Properties$Tag;->PRIV_BITFIELD:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-virtual {v3}, Lcom/motorola/android/provider/Checkin$Properties$Tag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 503
    :try_start_8
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_privBitField:J

    .line 504
    const-string v3, "CheckinProvider"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 505
    const-string v3, "CheckinProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckinProvider.readAndSetProperties set _privBitField to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_privBitField:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 508
    :catch_3
    move-exception v12

    .line 509
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_9
    const-string v3, "CheckinProvider"

    const-string v4, "failed setting PRIV_BITFIELD:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 518
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v15    # "sTag":Ljava/lang/String;
    .end local v16    # "sValue":Ljava/lang/String;
    :cond_16
    if-nez v14, :cond_18

    .line 519
    const-string v3, "CheckinProvider"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 520
    const-string v3, "CheckinProvider"

    const-string v4, "database bringup - setting event tag white-list to OTA profile: CHECKIN_FAILURE,CHECKIN_SUCCESS,DEVICE_PROPERTIES,DEV_ATTRIBS:SW,MOT_CCE_STATS:CS_Notif_FFA,MOT_OTA:LOG,MOT_PRIVACY_PROFILE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_17
    const-string v3, "CHECKIN_FAILURE,CHECKIN_SUCCESS,DEVICE_PROPERTIES,DEV_ATTRIBS:SW,MOT_CCE_STATS:CS_Notif_FFA,MOT_OTA:LOG,MOT_PRIVACY_PROFILE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/server/checkin/CheckinProvider;->initEventTags(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinEventTags:Ljava/util/Map;

    .line 524
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_allEventTagsAllowed:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 529
    :cond_18
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method private readEventCount()I
    .locals 2

    .prologue
    .line 397
    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLock:Ljava/lang/Object;

    monitor-enter v1

    .line 398
    :try_start_0
    iget v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    monitor-exit v1

    return v0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private requestCheckin()V
    .locals 3

    .prologue
    .line 537
    iget-boolean v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_requestedCheckin:Z

    if-eqz v1, :cond_0

    .line 545
    :goto_0
    return-void

    .line 540
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_requestedCheckin:Z

    .line 541
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.CHECKIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 543
    const-string v1, "com.motorola.blur.service.blur.checkin.request_id"

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1142
    invoke-direct {p0, p1}, Lcom/motorola/android/server/checkin/CheckinProvider;->checkPermissions(Landroid/net/Uri;)V

    .line 1143
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 1144
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1145
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WHERE clause not supported for delete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1148
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1149
    const/4 p3, 0x0

    .line 1154
    :cond_1
    const/4 v0, 0x0

    .line 1155
    .local v0, "count":I
    const-string v3, "events"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1156
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/android/server/checkin/CheckinProvider;->deleteFromEvents(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1157
    const-string v3, "CheckinProvider"

    const-string v4, "%d events delete %d left"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->readEventCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1167
    return v0

    .line 1150
    .end local v0    # "count":I
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v8, :cond_1

    .line 1151
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid delete URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1160
    .restart local v0    # "count":I
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1161
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1162
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 1163
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CheckinProvider"

    const-string v4, "delete: Error in deleting database"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1196
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vnd.android.cursor.dir/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1199
    :goto_0
    return-object v0

    .line 1198
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vnd.android.cursor.item/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1201
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initEventTags(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p1, "commaSeparatedTags"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 273
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 276
    .local v5, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-object v5

    .line 282
    :cond_1
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v7, v0, v3

    .line 284
    .local v7, "tagString":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 287
    .local v1, "eventList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 289
    .local v6, "tagName":Ljava/lang/String;
    invoke-interface {v1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 292
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v2, 0x0

    .line 293
    .local v2, "events":Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;
    :goto_2
    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 292
    .end local v2    # "events":Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;
    :cond_2
    new-instance v2, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;

    invoke-direct {v2, v1}, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;-><init>(Ljava/util/List;)V

    goto :goto_2

    .line 296
    .end local v1    # "eventList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "tagString":Ljava/lang/String;
    :cond_3
    const-string v8, "CheckinProvider"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 297
    const-string v8, "CheckinProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initEventTags - input: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v8, "CheckinProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initEventTags - all the tags with allowed list are cached: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    .line 595
    invoke-direct {p0, p1}, Lcom/motorola/android/server/checkin/CheckinProvider;->checkPermissions(Landroid/net/Uri;)V

    .line 598
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 600
    .local v4, "table":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 601
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid insert URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 605
    :cond_0
    :try_start_0
    const-string v6, "events"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 606
    const-string v6, "tagType"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2, v6}, Lcom/motorola/android/server/checkin/CheckinProvider;->insertEvent(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v2

    .line 621
    .local v2, "id":J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_4

    .line 626
    .end local v2    # "id":J
    :goto_1
    return-object v5

    .line 607
    :cond_1
    const-string v6, "stats"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 608
    invoke-direct {p0, p2}, Lcom/motorola/android/server/checkin/CheckinProvider;->insertStats(Landroid/content/ContentValues;)J

    move-result-wide v2

    .restart local v2    # "id":J
    goto :goto_0

    .line 609
    .end local v2    # "id":J
    :cond_2
    const-string v6, "crashes"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 610
    invoke-direct {p0, p2}, Lcom/motorola/android/server/checkin/CheckinProvider;->insertCrash(Landroid/content/ContentValues;)J

    move-result-wide v2

    .restart local v2    # "id":J
    goto :goto_0

    .line 612
    .end local v2    # "id":J
    :cond_3
    iget-object v6, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 613
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 614
    .restart local v2    # "id":J
    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->readAndSetProperties()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 616
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "id":J
    :catch_0
    move-exception v1

    .line 617
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "CheckinProvider"

    const-string v7, "insert: Error in inserting the data to database"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 624
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "id":J
    :cond_4
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 625
    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v5, p1

    .line 626
    goto :goto_1
.end method

.method public onCreate()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 549
    new-instance v0, Lcom/motorola/android/server/checkin/CheckinProvider$OpenHelper;

    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/android/server/checkin/CheckinProvider$OpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 552
    new-instance v0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;

    const/16 v1, 0x10

    const-wide/16 v2, 0x1f4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;-><init>(Lcom/motorola/android/server/checkin/CheckinProvider;IJ)V

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mEventInsertThread:Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;

    .line 553
    iget-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mEventInsertThread:Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;

    invoke-virtual {v0}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->start()V

    .line 554
    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->readAndSetProperties()V

    .line 555
    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->initEventCount()V

    .line 556
    const-string v0, "CheckinProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    const-string v0, "CheckinProvider"

    const-string v1, "Current Event Count is : %d"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->readEventCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    return v5
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "select"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    .line 564
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 565
    .local v10, "table":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/motorola/android/server/checkin/CheckinProvider;->checkPermissions(Landroid/net/Uri;)V

    .line 566
    const-string v2, "events"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 567
    const-string v2, "CheckinProvider"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    const-string v2, "CheckinProvider"

    const-string v3, "flushing event queue"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    iget-object v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mEventInsertThread:Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;

    invoke-virtual {v2}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->queueFlush()V

    .line 572
    :cond_1
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 573
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 580
    :cond_2
    const/4 v8, 0x0

    .line 582
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 583
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 584
    if-eqz v8, :cond_3

    .line 585
    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :goto_0
    return-object v8

    .line 576
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 577
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid query URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 587
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 588
    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "CheckinProvider"

    const-string v3, "query: Error in querying table %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 1117
    invoke-direct {p0, p1}, Lcom/motorola/android/server/checkin/CheckinProvider;->checkPermissions(Landroid/net/Uri;)V

    .line 1118
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1119
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1120
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WHERE clause not supported for update: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1123
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1124
    const/4 p4, 0x0

    .line 1129
    :cond_1
    iget-object v3, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1130
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 1132
    .local v0, "count":I
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1133
    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    :goto_0
    return v0

    .line 1125
    .end local v0    # "count":I
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 1126
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid update URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1134
    .restart local v0    # "count":I
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 1135
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CheckinProvider"

    const-string v4, "Update: Error in updating database"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
