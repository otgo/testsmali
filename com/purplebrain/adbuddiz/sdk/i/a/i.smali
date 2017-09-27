.class public final Lcom/purplebrain/adbuddiz/sdk/i/a/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/a/i;->d(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/a/i;->d(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/a/i;->d(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 3

    const/4 v1, 0x0

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/i/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
