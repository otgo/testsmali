.class final Lcom/fyber/utils/h$a;
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
    name = "a"
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
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
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
    .line 379
    invoke-static {}, Lcom/fyber/utils/h;->g()Lcom/fyber/utils/h;

    move-result-object v0

    if-nez v0, :cond_0

    .line 380
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/fyber/utils/h$a;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/utils/h$a;->a:Ljava/util/Map;

    .line 383
    iget-object v0, p0, Lcom/fyber/utils/h$a;->a:Ljava/util/Map;

    const-string v1, "app_bundle_name"

    invoke-static {}, Lcom/fyber/utils/h;->g()Lcom/fyber/utils/h;

    move-result-object v2

    invoke-static {v2}, Lcom/fyber/utils/h;->j(Lcom/fyber/utils/h;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lcom/fyber/utils/h$a;->a:Ljava/util/Map;

    const-string v1, "app_version"

    invoke-static {}, Lcom/fyber/utils/h;->g()Lcom/fyber/utils/h;

    move-result-object v2

    invoke-static {v2}, Lcom/fyber/utils/h;->k(Lcom/fyber/utils/h;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/fyber/utils/h$a;->a:Ljava/util/Map;

    goto :goto_0
.end method
