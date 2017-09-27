.class public final Lcom/fyber/utils/g;
.super Ljava/lang/Object;
.source "GlobalParamsProvider.java"

# interfaces
.implements Lcom/fyber/utils/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2
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
    .line 26
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->c()Ljava/util/Map;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/fyber/utils/m;->a(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 30
    :cond_0
    return-object v0
.end method
