.class Lcom/jirbo/adcolony/n$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Z

.field b:Lcom/jirbo/adcolony/n$w;

.field c:Lcom/jirbo/adcolony/n$u;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1381
    iget-object v1, p0, Lcom/jirbo/adcolony/n$c;->b:Lcom/jirbo/adcolony/n$w;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$w;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1383
    :cond_0
    :goto_0
    return v0

    .line 1382
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/n$c;->c:Lcom/jirbo/adcolony/n$u;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$u;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1383
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/ADCData$g;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1388
    if-nez p1, :cond_1

    .line 1399
    :cond_0
    :goto_0
    return v0

    .line 1390
    :cond_1
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jirbo/adcolony/n$c;->a:Z

    .line 1391
    iget-boolean v2, p0, Lcom/jirbo/adcolony/n$c;->a:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1393
    :cond_2
    new-instance v2, Lcom/jirbo/adcolony/n$w;

    invoke-direct {v2}, Lcom/jirbo/adcolony/n$w;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/n$c;->b:Lcom/jirbo/adcolony/n$w;

    .line 1394
    iget-object v2, p0, Lcom/jirbo/adcolony/n$c;->b:Lcom/jirbo/adcolony/n$w;

    const-string v3, "pre_popup"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/n$w;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1396
    new-instance v2, Lcom/jirbo/adcolony/n$u;

    invoke-direct {v2}, Lcom/jirbo/adcolony/n$u;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/n$c;->c:Lcom/jirbo/adcolony/n$u;

    .line 1397
    iget-object v2, p0, Lcom/jirbo/adcolony/n$c;->c:Lcom/jirbo/adcolony/n$u;

    const-string v3, "post_popup"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/n$u;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1399
    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 1404
    iget-boolean v0, p0, Lcom/jirbo/adcolony/n$c;->a:Z

    if-nez v0, :cond_0

    .line 1408
    :goto_0
    return-void

    .line 1406
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/n$c;->b:Lcom/jirbo/adcolony/n$w;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$w;->b()V

    .line 1407
    iget-object v0, p0, Lcom/jirbo/adcolony/n$c;->c:Lcom/jirbo/adcolony/n$u;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$u;->b()V

    goto :goto_0
.end method
