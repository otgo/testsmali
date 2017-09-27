.class Lcom/jirbo/adcolony/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field A:Lcom/jirbo/adcolony/n$p;

.field B:Lcom/jirbo/adcolony/n$aa;

.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:J

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:Z

.field t:Lcom/jirbo/adcolony/n$n;

.field u:Lcom/jirbo/adcolony/n$z;

.field v:Lcom/jirbo/adcolony/n$m;

.field w:Lcom/jirbo/adcolony/n$c;

.field x:Lcom/jirbo/adcolony/n$b;

.field y:Lcom/jirbo/adcolony/n$h;

.field z:Lcom/jirbo/adcolony/n$ac;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 967
    iget-object v1, p0, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$m;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 984
    :cond_0
    :goto_0
    return v0

    .line 970
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/n$a;->w:Lcom/jirbo/adcolony/n$c;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/n$c;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/n$a;->w:Lcom/jirbo/adcolony/n$c;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 972
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/n$p;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$p;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 975
    :cond_3
    iget-object v1, p0, Lcom/jirbo/adcolony/n$a;->y:Lcom/jirbo/adcolony/n$h;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/n$h;->d:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jirbo/adcolony/n$a;->y:Lcom/jirbo/adcolony/n$h;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$ac;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 980
    iget-object v1, p0, Lcom/jirbo/adcolony/n$a;->B:Lcom/jirbo/adcolony/n$aa;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$aa;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/jirbo/adcolony/n$a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 984
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/ADCData$g;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1002
    if-nez p1, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return v0

    .line 1003
    :cond_1
    const-string v1, "uuid"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$a;->a:Ljava/lang/String;

    .line 1006
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$a;->b:Ljava/lang/String;

    .line 1007
    const-string v1, "ad_campaign_id"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/n$a;->c:I

    .line 1008
    const-string v1, "ad_id"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/n$a;->d:I

    .line 1009
    const-string v1, "ad_group_id"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/n$a;->e:I

    .line 1010
    const-string v1, "cpcv_bid"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/n$a;->f:I

    .line 1011
    const-string v1, "net_earnings"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/n$a;->g:I

    .line 1012
    const-string v1, "expires"

    const/16 v2, 0x294

    invoke-virtual {p1, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/n$a;->h:I

    .line 1013
    const-string v1, "enable_in_app_store"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/n$a;->j:Z

    .line 1014
    const-string v1, "video_events_on_replays"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/n$a;->k:Z

    .line 1015
    const-string v1, "test_ad"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/n$a;->l:Z

    .line 1016
    const-string v1, "fullscreen"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/n$a;->m:Z

    .line 1017
    const-string v1, "house_ad"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/n$a;->n:Z

    .line 1018
    const-string v1, "contracted"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/n$a;->o:Z

    .line 1020
    iput-boolean v0, p0, Lcom/jirbo/adcolony/n$a;->s:Z

    .line 1022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jirbo/adcolony/n$a;->i:J

    .line 1025
    new-instance v1, Lcom/jirbo/adcolony/n$n;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$n;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$a;->t:Lcom/jirbo/adcolony/n$n;

    .line 1026
    iget-object v1, p0, Lcom/jirbo/adcolony/n$a;->t:Lcom/jirbo/adcolony/n$n;

    const-string v2, "limits"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$n;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    new-instance v1, Lcom/jirbo/adcolony/n$z;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$z;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    .line 1030
    iget-object v1, p0, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    const-string v2, "third_party_tracking"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$z;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1033
    new-instance v1, Lcom/jirbo/adcolony/n$m;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$m;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    .line 1034
    iget-object v1, p0, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    const-string v2, "in_app_browser"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$m;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1036
    new-instance v1, Lcom/jirbo/adcolony/n$p;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$p;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    .line 1037
    iget-object v1, p0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    const-string v2, "native"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$p;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1040
    new-instance v1, Lcom/jirbo/adcolony/n$c;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$c;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$a;->w:Lcom/jirbo/adcolony/n$c;

    .line 1041
    iget-object v1, p0, Lcom/jirbo/adcolony/n$a;->w:Lcom/jirbo/adcolony/n$c;

    const-string v2, "v4vc"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$c;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1044
    new-instance v1, Lcom/jirbo/adcolony/n$b;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$b;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    .line 1045
    iget-object v1, p0, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    const-string v2, "ad_tracking"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$b;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    new-instance v1, Lcom/jirbo/adcolony/n$h;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$h;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$a;->y:Lcom/jirbo/adcolony/n$h;

    .line 1049
    iget-object v1, p0, Lcom/jirbo/adcolony/n$a;->y:Lcom/jirbo/adcolony/n$h;

    const-string v2, "companion_ad"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$h;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1052
    new-instance v1, Lcom/jirbo/adcolony/n$ac;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$ac;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    .line 1053
    iget-object v1, p0, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    const-string v2, "video"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$ac;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1055
    new-instance v1, Lcom/jirbo/adcolony/n$aa;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$aa;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$a;->B:Lcom/jirbo/adcolony/n$aa;

    .line 1056
    iget-object v1, p0, Lcom/jirbo/adcolony/n$a;->B:Lcom/jirbo/adcolony/n$aa;

    const-string v2, "v4iap"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$aa;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1060
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v1, "Finished parsing ad"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 1062
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method b()Z
    .locals 4

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/jirbo/adcolony/n$a;->q:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jirbo/adcolony/n$a;->i:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/jirbo/adcolony/n$a;->h:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 991
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 996
    iget-boolean v0, p0, Lcom/jirbo/adcolony/n$a;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 997
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()V
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/jirbo/adcolony/n$a;->w:Lcom/jirbo/adcolony/n$c;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$c;->b()V

    .line 1068
    iget-object v0, p0, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$m;->b()V

    .line 1069
    iget-object v0, p0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$p;->b()V

    .line 1070
    iget-object v0, p0, Lcom/jirbo/adcolony/n$a;->y:Lcom/jirbo/adcolony/n$h;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$h;->b()V

    .line 1071
    iget-object v0, p0, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ac;->c()V

    .line 1072
    return-void
.end method
