.class public final Lcom/purplebrain/adbuddiz/sdk/i/b/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 3

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string v1, "aia"

    invoke-static {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/b/d;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "ABAlreadyInstalledApps.getAlreadyInstalledApps()"

    invoke-static {v2, v1}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
