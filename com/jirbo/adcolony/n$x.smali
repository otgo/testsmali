.class Lcom/jirbo/adcolony/n$x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "x"
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/jirbo/adcolony/n$g;

.field g:Lcom/jirbo/adcolony/n$g;

.field h:Lcom/jirbo/adcolony/n$g;

.field i:Lcom/jirbo/adcolony/n$g;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1812
    iget-boolean v2, p0, Lcom/jirbo/adcolony/n$x;->a:Z

    if-nez v2, :cond_1

    .line 1818
    :cond_0
    :goto_0
    return v0

    .line 1813
    :cond_1
    sget-object v2, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v2, v2, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v3, p0, Lcom/jirbo/adcolony/n$x;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1814
    :cond_2
    iget-object v2, p0, Lcom/jirbo/adcolony/n$x;->h:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/n$g;->a()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 1815
    :cond_3
    iget-object v2, p0, Lcom/jirbo/adcolony/n$x;->i:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/n$g;->a()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 1816
    :cond_4
    iget-object v2, p0, Lcom/jirbo/adcolony/n$x;->g:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/n$g;->a()Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 1817
    :cond_5
    iget-object v2, p0, Lcom/jirbo/adcolony/n$x;->f:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/n$g;->a()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/ADCData$g;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1824
    if-nez p1, :cond_1

    .line 1851
    :cond_0
    :goto_0
    return v0

    .line 1826
    :cond_1
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jirbo/adcolony/n$x;->a:Z

    .line 1827
    iget-boolean v2, p0, Lcom/jirbo/adcolony/n$x;->a:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1829
    :cond_2
    const-string v2, "width"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/n$x;->b:I

    .line 1830
    const-string v2, "height"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/n$x;->c:I

    .line 1831
    const-string v2, "background_image"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/n$x;->d:Ljava/lang/String;

    .line 1832
    const-string v2, "background_image_last_modified"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/n$x;->e:Ljava/lang/String;

    .line 1834
    sget-object v2, Lcom/jirbo/adcolony/a;->f:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1836
    sget-object v2, Lcom/jirbo/adcolony/a;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/jirbo/adcolony/n$x;->d:Ljava/lang/String;

    .line 1839
    :cond_3
    new-instance v2, Lcom/jirbo/adcolony/n$g;

    invoke-direct {v2}, Lcom/jirbo/adcolony/n$g;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/n$x;->h:Lcom/jirbo/adcolony/n$g;

    .line 1840
    iget-object v2, p0, Lcom/jirbo/adcolony/n$x;->h:Lcom/jirbo/adcolony/n$g;

    const-string v3, "replay"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/n$g;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1842
    new-instance v2, Lcom/jirbo/adcolony/n$g;

    invoke-direct {v2}, Lcom/jirbo/adcolony/n$g;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/n$x;->i:Lcom/jirbo/adcolony/n$g;

    .line 1843
    iget-object v2, p0, Lcom/jirbo/adcolony/n$x;->i:Lcom/jirbo/adcolony/n$g;

    const-string v3, "continue"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/n$g;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1845
    new-instance v2, Lcom/jirbo/adcolony/n$g;

    invoke-direct {v2}, Lcom/jirbo/adcolony/n$g;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/n$x;->g:Lcom/jirbo/adcolony/n$g;

    .line 1846
    iget-object v2, p0, Lcom/jirbo/adcolony/n$x;->g:Lcom/jirbo/adcolony/n$g;

    const-string v3, "download"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/n$g;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1848
    new-instance v2, Lcom/jirbo/adcolony/n$g;

    invoke-direct {v2}, Lcom/jirbo/adcolony/n$g;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/n$x;->f:Lcom/jirbo/adcolony/n$g;

    .line 1849
    iget-object v2, p0, Lcom/jirbo/adcolony/n$x;->f:Lcom/jirbo/adcolony/n$g;

    const-string v3, "info"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/n$g;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1851
    goto/16 :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1856
    iget-boolean v0, p0, Lcom/jirbo/adcolony/n$x;->a:Z

    if-nez v0, :cond_0

    .line 1862
    :goto_0
    return-void

    .line 1857
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v1, p0, Lcom/jirbo/adcolony/n$x;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$x;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    iget-object v0, p0, Lcom/jirbo/adcolony/n$x;->h:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$g;->b()V

    .line 1859
    iget-object v0, p0, Lcom/jirbo/adcolony/n$x;->i:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$g;->b()V

    .line 1860
    iget-object v0, p0, Lcom/jirbo/adcolony/n$x;->g:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$g;->b()V

    .line 1861
    iget-object v0, p0, Lcom/jirbo/adcolony/n$x;->f:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$g;->b()V

    goto :goto_0
.end method
