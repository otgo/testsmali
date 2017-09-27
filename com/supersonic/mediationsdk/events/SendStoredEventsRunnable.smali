.class Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;
.super Ljava/lang/Object;
.source "SendStoredEventsRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final KEY_EVENTS:Ljava/lang/String;

.field private mDbHelper:Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

.field private mGeneralProperties:Lorg/json/JSONObject;

.field private mLocalEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "dbHelper"    # Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "generalProperties"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/events/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p4, "localEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/events/Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "events"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->KEY_EVENTS:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mDbHelper:Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

    .line 34
    iput-object p2, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mUrl:Ljava/lang/String;

    .line 36
    if-nez p4, :cond_0

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mLocalEvents:Ljava/util/ArrayList;

    .line 41
    :goto_0
    if-nez p3, :cond_1

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mGeneralProperties:Lorg/json/JSONObject;

    .line 45
    :goto_1
    return-void

    .line 39
    :cond_0
    iput-object p4, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mLocalEvents:Ljava/util/ArrayList;

    goto :goto_0

    .line 44
    :cond_1
    iput-object p3, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mGeneralProperties:Lorg/json/JSONObject;

    goto :goto_1
.end method

.method private createDataToSend(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 5
    .param p1, "events"    # Lorg/json/JSONArray;

    .prologue
    .line 163
    const-string v0, ""

    .line 166
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mGeneralProperties:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 167
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v2

    .line 168
    .local v2, "timeStamp":J
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mGeneralProperties:Lorg/json/JSONObject;

    const-string v4, "timestamp"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 170
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mGeneralProperties:Lorg/json/JSONObject;

    const-string v4, "events"

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mGeneralProperties:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 177
    .end local v2    # "timeStamp":J
    :cond_0
    :goto_0
    return-object v0

    .line 174
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private createEventsArray(Lorg/json/JSONArray;Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "events"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/events/Event;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "inMemoryEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/events/Event;>;"
    if-nez p1, :cond_0

    .line 131
    new-instance p1, Lorg/json/JSONArray;

    .end local p1    # "events":Lorg/json/JSONArray;
    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 134
    .restart local p1    # "events":Lorg/json/JSONArray;
    :cond_0
    if-eqz p2, :cond_1

    .line 135
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/events/Event;

    .line 136
    .local v0, "e":Lcom/supersonic/mediationsdk/events/Event;
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/events/Event;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 139
    .end local v0    # "e":Lcom/supersonic/mediationsdk/events/Event;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object p1
.end method

.method private createJSONForEvent(ILjava/lang/String;IJILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "eventId"    # I
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "sessionDepth"    # I
    .param p4, "timestamp"    # J
    .param p6, "status"    # I
    .param p7, "placementName"    # Ljava/lang/String;
    .param p8, "rewardName"    # Ljava/lang/String;
    .param p9, "rewardAmount"    # I
    .param p10, "transId"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 193
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 196
    .local v2, "event":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "eventId"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    const-string v3, "provider"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v3, "sessionDepth"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 199
    const-string v3, "timestamp"

    invoke-virtual {v2, v3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 202
    if-eq p6, v5, :cond_0

    .line 203
    const-string v4, "status"

    const/4 v3, 0x1

    if-ne p6, v3, :cond_5

    const-string v3, "true"

    :goto_0
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    :cond_0
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 206
    const-string v3, "placement"

    invoke-virtual {v2, v3, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    :cond_1
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 209
    const-string v3, "rewardName"

    move-object/from16 v0, p8

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    :cond_2
    move/from16 v0, p9

    if-eq v0, v5, :cond_3

    .line 212
    const-string v3, "rewardAmount"

    move/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 214
    :cond_3
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 215
    const-string v3, "transId"

    move-object/from16 v0, p10

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    :cond_4
    :goto_1
    return-object v2

    .line 203
    :cond_5
    const-string v3, "false"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 219
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private sendEvents(Ljava/lang/String;)V
    .locals 2
    .param p1, "dataToSend"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mUrl:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/supersonic/mediationsdk/server/HttpFunctions;->getStringFromPost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 152
    .local v0, "succeed":Z
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 51
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mDbHelper:Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

    if-nez v3, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mDbHelper:Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 60
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v18, Lorg/json/JSONArray;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONArray;-><init>()V

    .line 63
    .local v18, "events":Lorg/json/JSONArray;
    const-string v3, "events"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 66
    .local v15, "cursor":Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 68
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 71
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    .line 72
    const-string v3, "eventid"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 73
    .local v5, "eventId":I
    const-string v3, "provider"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "provider":Ljava/lang/String;
    const-string v3, "sessiondepth"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 75
    .local v7, "sessionDepth":I
    const-string v3, "timestamp"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 76
    .local v8, "timestamp":J
    const-string v3, "status"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 77
    .local v10, "statusNum":I
    const-string v3, "placement"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 78
    .local v11, "placementName":Ljava/lang/String;
    const-string v3, "reward_name"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 79
    .local v12, "rewardName":Ljava/lang/String;
    const-string v3, "reward_amount"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 80
    .local v13, "rewardAmount":I
    const-string v3, "transId"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .local v14, "transId":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 83
    invoke-direct/range {v4 .. v14}, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->createJSONForEvent(ILjava/lang/String;IJILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 86
    .local v17, "eventJson":Lorg/json/JSONObject;
    if-eqz v17, :cond_2

    .line 87
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 89
    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 110
    .end local v5    # "eventId":I
    .end local v6    # "provider":Ljava/lang/String;
    .end local v7    # "sessionDepth":I
    .end local v8    # "timestamp":J
    .end local v10    # "statusNum":I
    .end local v11    # "placementName":Ljava/lang/String;
    .end local v12    # "rewardName":Ljava/lang/String;
    .end local v13    # "rewardAmount":I
    .end local v14    # "transId":Ljava/lang/String;
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v17    # "eventJson":Lorg/json/JSONObject;
    .end local v18    # "events":Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    .line 113
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 93
    .restart local v15    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "events":Lorg/json/JSONArray;
    :cond_3
    :try_start_1
    const-string v3, "events"

    const/4 v4, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mLocalEvents:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->createEventsArray(Lorg/json/JSONArray;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v19

    .line 101
    .local v19, "eventsArray":Lorg/json/JSONArray;
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->createDataToSend(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v16

    .line 106
    .local v16, "dataToSend":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->sendEvents(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .end local v16    # "dataToSend":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 113
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v18    # "events":Lorg/json/JSONArray;
    .end local v19    # "eventsArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 114
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v3
.end method
