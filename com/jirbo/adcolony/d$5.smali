.class Lcom/jirbo/adcolony/d$5;
.super Lcom/jirbo/adcolony/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/d;->a(Lcom/jirbo/adcolony/AdColonyAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/AdColonyAd;

.field final synthetic b:Lcom/jirbo/adcolony/d;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/jirbo/adcolony/d$5;->b:Lcom/jirbo/adcolony/d;

    iput-object p3, p0, Lcom/jirbo/adcolony/d$5;->a:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/j;-><init>(Lcom/jirbo/adcolony/d;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 136
    iget-object v0, p0, Lcom/jirbo/adcolony/d$5;->a:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/d$5;->a:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/d$5;->a:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$p;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/d$5;->a:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$p;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/d$5;->a:Lcom/jirbo/adcolony/AdColonyAd;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/d$5;->a:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->l:Ljava/lang/String;

    const-string v1, "fullscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d$5;->b:Lcom/jirbo/adcolony/d;

    const-string v1, "start"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"ad_slot\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v3, v3, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget v3, v3, Lcom/jirbo/adcolony/u;->j:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \"replay\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jirbo/adcolony/d$5;->a:Lcom/jirbo/adcolony/AdColonyAd;

    iget-boolean v3, v3, Lcom/jirbo/adcolony/AdColonyAd;->u:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jirbo/adcolony/d$5;->a:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 139
    iget-object v0, p0, Lcom/jirbo/adcolony/d$5;->a:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/n$a;->q:Z

    .line 140
    iget-object v0, p0, Lcom/jirbo/adcolony/d$5;->a:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/n$a;->r:Z

    .line 141
    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 142
    iget-object v0, p0, Lcom/jirbo/adcolony/d$5;->a:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->j:Lcom/jirbo/adcolony/ADCData$c;

    iget-object v1, p0, Lcom/jirbo/adcolony/d$5;->a:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCData$c;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$c;

    .line 144
    :cond_1
    return-void
.end method
