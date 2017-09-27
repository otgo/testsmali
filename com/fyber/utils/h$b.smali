.class final Lcom/fyber/utils/h$b;
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
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/utils/h$b;->a:Ljava/util/HashMap;

    .line 352
    iget-object v0, p0, Lcom/fyber/utils/h$b;->a:Ljava/util/HashMap;

    const-string v1, "os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lcom/fyber/utils/h$b;->a:Ljava/util/HashMap;

    const-string v1, "phone_version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/fyber/utils/h$b;->a:Ljava/util/HashMap;

    const-string v1, "manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/fyber/utils/h$b;->a:Ljava/util/HashMap;

    const-string v1, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
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
    .line 360
    invoke-static {}, Lcom/fyber/utils/h;->g()Lcom/fyber/utils/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/fyber/utils/h$b;->a:Ljava/util/HashMap;

    const-string v1, "carrier_name"

    invoke-static {}, Lcom/fyber/utils/h;->g()Lcom/fyber/utils/h;

    move-result-object v2

    invoke-static {v2}, Lcom/fyber/utils/h;->g(Lcom/fyber/utils/h;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lcom/fyber/utils/h$b;->a:Ljava/util/HashMap;

    const-string v1, "carrier_country"

    invoke-static {}, Lcom/fyber/utils/h;->g()Lcom/fyber/utils/h;

    move-result-object v2

    invoke-static {v2}, Lcom/fyber/utils/h;->h(Lcom/fyber/utils/h;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcom/fyber/utils/h$b;->a:Ljava/util/HashMap;

    const-string v1, "network_connection_type"

    invoke-static {}, Lcom/fyber/utils/h;->g()Lcom/fyber/utils/h;

    move-result-object v2

    invoke-static {v2}, Lcom/fyber/utils/h;->i(Lcom/fyber/utils/h;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/fyber/utils/h$b;->a:Ljava/util/HashMap;

    return-object v0
.end method
