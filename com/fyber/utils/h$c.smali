.class final Lcom/fyber/utils/h$c;
.super Ljava/lang/Object;
.source "HostInfo.java"

# interfaces
.implements Lcom/fyber/utils/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/utils/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/fyber/utils/h;->g()Lcom/fyber/utils/h;

    move-result-object v0

    if-nez v0, :cond_0

    .line 327
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 333
    :goto_0
    monitor-exit p0

    return-object v0

    .line 328
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/fyber/utils/h$c;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/utils/h$c;->a:Ljava/util/Map;

    .line 330
    iget-object v0, p0, Lcom/fyber/utils/h$c;->a:Ljava/util/Map;

    const-string v1, "google_ad_id"

    invoke-static {}, Lcom/fyber/utils/h;->g()Lcom/fyber/utils/h;

    move-result-object v2

    invoke-static {v2}, Lcom/fyber/utils/h;->e(Lcom/fyber/utils/h;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/fyber/utils/h$c;->a:Ljava/util/Map;

    const-string v1, "google_ad_id_limited_tracking_enabled"

    invoke-static {}, Lcom/fyber/utils/h;->g()Lcom/fyber/utils/h;

    move-result-object v2

    invoke-static {v2}, Lcom/fyber/utils/h;->f(Lcom/fyber/utils/h;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/fyber/utils/h$c;->a:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
