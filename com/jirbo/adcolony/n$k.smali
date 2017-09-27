.class Lcom/jirbo/adcolony/n$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1656
    iget-boolean v1, p0, Lcom/jirbo/adcolony/n$k;->a:Z

    if-nez v1, :cond_1

    .line 1658
    :cond_0
    :goto_0
    return v0

    .line 1657
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/ADCData$g;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1663
    if-nez p1, :cond_0

    .line 1669
    :goto_0
    return v0

    .line 1665
    :cond_0
    const-string v1, "enabled"

    invoke-virtual {p1, v1, v0}, Lcom/jirbo/adcolony/ADCData$g;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/n$k;->a:Z

    .line 1666
    const-string v0, "file_url"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$k;->c:Ljava/lang/String;

    .line 1667
    const-string v0, "last_modified"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$k;->d:Ljava/lang/String;

    .line 1669
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1674
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v1, p0, Lcom/jirbo/adcolony/n$k;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    return-void
.end method
