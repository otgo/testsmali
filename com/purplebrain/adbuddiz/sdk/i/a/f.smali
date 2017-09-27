.class public final Lcom/purplebrain/adbuddiz/sdk/i/a/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Landroid/location/Location;
    .locals 8

    const/4 v2, 0x0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/a;->c:Lcom/purplebrain/adbuddiz/sdk/f/a;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/f/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/a;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object v2

    :cond_1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/i/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    :cond_3
    :goto_1
    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method
