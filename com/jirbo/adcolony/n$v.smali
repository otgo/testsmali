.class Lcom/jirbo/adcolony/n$v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "v"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Lcom/jirbo/adcolony/n$l;

.field m:Lcom/jirbo/adcolony/n$g;

.field n:Lcom/jirbo/adcolony/n$g;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1472
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$v;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1475
    :cond_0
    :goto_0
    return v0

    .line 1473
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/n$v;->l:Lcom/jirbo/adcolony/n$l;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1474
    iget-object v1, p0, Lcom/jirbo/adcolony/n$v;->m:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1475
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/ADCData$g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1480
    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/n$v;->a:I

    .line 1481
    const-string v1, "label_reward"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$v;->b:Ljava/lang/String;

    .line 1482
    const-string v1, "width"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/n$v;->c:I

    .line 1483
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/n$v;->d:I

    .line 1484
    const-string v1, "image"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$v;->e:Ljava/lang/String;

    .line 1485
    const-string v1, "image_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$v;->f:Ljava/lang/String;

    .line 1486
    const-string v1, "label"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$v;->g:Ljava/lang/String;

    .line 1487
    const-string v1, "label_rgba"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$v;->h:Ljava/lang/String;

    .line 1488
    const-string v1, "label_shadow_rgba"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$v;->i:Ljava/lang/String;

    .line 1489
    const-string v1, "label_fraction"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$v;->j:Ljava/lang/String;

    .line 1490
    const-string v1, "label_html"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$v;->k:Ljava/lang/String;

    .line 1492
    new-instance v1, Lcom/jirbo/adcolony/n$l;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$l;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$v;->l:Lcom/jirbo/adcolony/n$l;

    .line 1493
    iget-object v1, p0, Lcom/jirbo/adcolony/n$v;->l:Lcom/jirbo/adcolony/n$l;

    const-string v2, "logo"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$l;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1501
    :cond_0
    :goto_0
    return v0

    .line 1495
    :cond_1
    new-instance v1, Lcom/jirbo/adcolony/n$g;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$g;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$v;->m:Lcom/jirbo/adcolony/n$g;

    .line 1496
    iget-object v1, p0, Lcom/jirbo/adcolony/n$v;->m:Lcom/jirbo/adcolony/n$g;

    const-string v2, "option_yes"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$g;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1498
    new-instance v1, Lcom/jirbo/adcolony/n$g;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$g;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$v;->n:Lcom/jirbo/adcolony/n$g;

    .line 1499
    iget-object v1, p0, Lcom/jirbo/adcolony/n$v;->n:Lcom/jirbo/adcolony/n$g;

    const-string v2, "option_no"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$g;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1501
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1506
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v1, p0, Lcom/jirbo/adcolony/n$v;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$v;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    iget-object v0, p0, Lcom/jirbo/adcolony/n$v;->l:Lcom/jirbo/adcolony/n$l;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$l;->b()V

    .line 1508
    iget-object v0, p0, Lcom/jirbo/adcolony/n$v;->m:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$g;->b()V

    .line 1509
    iget-object v0, p0, Lcom/jirbo/adcolony/n$v;->n:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$g;->b()V

    .line 1510
    return-void
.end method
