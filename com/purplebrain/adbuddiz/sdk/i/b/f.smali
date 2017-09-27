.class public final Lcom/purplebrain/adbuddiz/sdk/i/b/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/i/b/f$1;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 5

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/b/f$1;->a:[I

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->e()Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/purplebrain/adbuddiz/sdk/f/a/b;

    iget-wide v0, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->g:J

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    :try_start_0
    const-string v2, "uc"

    invoke-static {p0, v2}, Lcom/purplebrain/adbuddiz/sdk/i/b/d;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    const-string v0, "uc"

    invoke-static {p0, v0, v2}, Lcom/purplebrain/adbuddiz/sdk/i/b/d;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
