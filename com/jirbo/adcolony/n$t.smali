.class Lcom/jirbo/adcolony/n$t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "t"
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1572
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$t;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1575
    :cond_0
    :goto_0
    return v0

    .line 1573
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/n$t;->l:Lcom/jirbo/adcolony/n$l;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1574
    iget-object v1, p0, Lcom/jirbo/adcolony/n$t;->m:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1575
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/ADCData$g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1580
    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/n$t;->a:I

    .line 1581
    const-string v1, "label_reward"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$t;->b:Ljava/lang/String;

    .line 1582
    const-string v1, "width"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/n$t;->c:I

    .line 1583
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/n$t;->d:I

    .line 1584
    const-string v1, "image"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$t;->e:Ljava/lang/String;

    .line 1585
    const-string v1, "image_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$t;->f:Ljava/lang/String;

    .line 1586
    const-string v1, "label"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$t;->g:Ljava/lang/String;

    .line 1587
    const-string v1, "label_rgba"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$t;->h:Ljava/lang/String;

    .line 1588
    const-string v1, "label_shadow_rgba"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$t;->i:Ljava/lang/String;

    .line 1589
    const-string v1, "label_fraction"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$t;->j:Ljava/lang/String;

    .line 1590
    const-string v1, "label_html"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$t;->k:Ljava/lang/String;

    .line 1592
    new-instance v1, Lcom/jirbo/adcolony/n$l;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$l;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$t;->l:Lcom/jirbo/adcolony/n$l;

    .line 1593
    iget-object v1, p0, Lcom/jirbo/adcolony/n$t;->l:Lcom/jirbo/adcolony/n$l;

    const-string v2, "logo"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$l;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1598
    :cond_0
    :goto_0
    return v0

    .line 1595
    :cond_1
    new-instance v1, Lcom/jirbo/adcolony/n$g;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$g;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$t;->m:Lcom/jirbo/adcolony/n$g;

    .line 1596
    iget-object v1, p0, Lcom/jirbo/adcolony/n$t;->m:Lcom/jirbo/adcolony/n$g;

    const-string v2, "option_done"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$g;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1598
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1603
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v1, p0, Lcom/jirbo/adcolony/n$t;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$t;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lcom/jirbo/adcolony/n$t;->l:Lcom/jirbo/adcolony/n$l;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$l;->b()V

    .line 1605
    iget-object v0, p0, Lcom/jirbo/adcolony/n$t;->m:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$g;->b()V

    .line 1606
    return-void
.end method
