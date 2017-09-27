.class final Lcom/fyber/utils/h$d;
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
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 310
    invoke-static {}, Lcom/fyber/utils/h;->g()Lcom/fyber/utils/h;

    move-result-object v0

    if-nez v0, :cond_0

    .line 311
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "orientation"

    invoke-static {}, Lcom/fyber/utils/h;->g()Lcom/fyber/utils/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/utils/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method
