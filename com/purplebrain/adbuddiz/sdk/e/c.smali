.class public final Lcom/purplebrain/adbuddiz/sdk/e/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lorg/json/JSONObject;)Lcom/purplebrain/adbuddiz/sdk/e/b;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/b;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;-><init>()V

    const-string v2, "updateTimestamp"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->a:J

    const-string v2, "updateFrequency"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->b:J

    const-string v2, "cacheExpiration"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->d:J

    const-string v2, "a"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->c:Ljava/lang/String;

    const-string v2, "isTablet"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->e:Z

    const-string v2, "publisherId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->f:J

    const-string v2, "downloadAdBaseUrl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->g:Ljava/lang/String;

    const-string v2, "byAdBuddizLinkUrl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->h:Ljava/lang/String;

    const-string v2, "inactivePlacementIds"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v2, v1

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->i:Ljava/util/List;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "maxNbAdBuddizAdInCache"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->j:I

    const-string v2, "maxSizeRTBAdContent"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->k:I

    const-string v2, "maxNbAdBuddizImpressionTimestampSent"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->l:I

    const-string v2, "maxNbRTBImpressionTimestampSent"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->m:I

    const-string v2, "additionalInformationToSend"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->n:I

    const-string v2, "minTimeBeforeClickEnabled"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->r:J

    const-string v2, "minTimeBeforeCloseEnabledWhileFollowingLinks"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->s:J

    const-string v2, "minTimeBeforeCloseEnabledWhenMediaPlayerStuck"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->u:J

    const-string v2, "minTimeBeforeCloseEnabledOnMRAID"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "minTimeBeforeCloseEnabledOnMRAID"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->t:Ljava/lang/Long;

    :cond_1
    const-string v2, "minTimeBetween2ShowAdCalls"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->o:J

    const-string v2, "minTimeBetween2ReportOnIsReady"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->p:J

    const-string v2, "minTimeBetween2RequestNextAdAfterNoFill"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->q:J

    const-string v2, "timeBeforeSendImpressionAfterLastResourceChecked"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->v:J

    const-string v2, "timeBeforeSendImpressionIfResourceNotLoading"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->w:J

    const-string v2, "showAdEventsToReport"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const-string v2, "showAdEventsToReport"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v2, v1

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->x:Ljava/util/List;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->valueOf(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "isReadyToShowAdEventsToReport"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const-string v2, "isReadyToShowAdEventsToReport"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->y:Ljava/util/List;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->valueOf(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const-string v1, "mediaPlayerStartsMuted"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->z:Z

    const-string v1, "percentageBeforeNotReportingVASTError"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->A:D

    const-string v1, "mediaFileSelectorParameters"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/e/g;->a(Lorg/json/JSONObject;)Lcom/purplebrain/adbuddiz/sdk/e/g;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->B:Lcom/purplebrain/adbuddiz/sdk/e/g;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/e/b;)Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "updateTimestamp"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->a:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "updateFrequency"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->b:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "cacheExpiration"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->d:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "a"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "isTablet"

    iget-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->e:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "publisherId"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->f:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "downloadAdBaseUrl"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "byAdBuddizLinkUrl"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "inactivePlacementIds"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "maxNbAdBuddizAdInCache"

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->j:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "maxSizeRTBAdContent"

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->k:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "maxNbAdBuddizImpressionTimestampSent"

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->l:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "maxNbRTBImpressionTimestampSent"

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->m:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "additionalInformationToSend"

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->n:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "minTimeBeforeClickEnabled"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->r:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "minTimeBeforeCloseEnabledWhileFollowingLinks"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->s:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "minTimeBeforeCloseEnabledWhenMediaPlayerStuck"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->u:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->t:Ljava/lang/Long;

    if-eqz v0, :cond_1

    const-string v0, "minTimeBeforeCloseEnabledOnMRAID"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->t:Ljava/lang/Long;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "minTimeBetween2ShowAdCalls"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->o:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "minTimeBetween2ReportOnIsReady"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->p:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "minTimeBetween2RequestNextAdAfterNoFill"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->q:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "timeBeforeSendImpressionAfterLastResourceChecked"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->v:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "timeBeforeSendImpressionIfResourceNotLoading"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->w:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_2
    const-string v0, "showAdEventsToReport"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_3
    const-string v0, "isReadyToShowAdEventsToReport"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mediaPlayerStartsMuted"

    iget-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->z:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "percentageBeforeNotReportingVASTError"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->A:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "mediaFileSelectorParameters"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->B:Lcom/purplebrain/adbuddiz/sdk/e/g;

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/e/g;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto/16 :goto_1
.end method
