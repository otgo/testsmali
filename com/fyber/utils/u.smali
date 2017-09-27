.class public final Lcom/fyber/utils/u;
.super Ljava/lang/Object;
.source "UserId.java"


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 25
    const-class v2, Lcom/fyber/utils/u;

    monitor-enter v2

    :try_start_0
    const-string v0, "FyberPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 28
    const-string v0, "STATE_GENERATED_USERID_KEY"

    const/4 v1, 0x0

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    if-nez v0, :cond_2

    .line 1043
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1044
    invoke-static {v1}, Lcom/fyber/utils/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1046
    if-eqz v0, :cond_0

    const-string v4, "nosha1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v0, v1

    .line 34
    :cond_1
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 35
    const-string v3, "STATE_GENERATED_USERID_KEY"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_2
    monitor-exit v2

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
