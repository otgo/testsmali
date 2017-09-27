.class public final Lcom/fyber/utils/m;
.super Ljava/lang/Object;
.source "MapUtils.java"


# direct methods
.method public static a(Ljava/util/Map;)Z
    .locals 1

    .prologue
    .line 17
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/Map;)Z
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/fyber/utils/m;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
