.class Lcom/jirbo/adcolony/d$6;
.super Lcom/jirbo/adcolony/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/d;->a(DLcom/jirbo/adcolony/AdColonyAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/AdColonyAd;

.field final synthetic b:D

.field final synthetic c:Lcom/jirbo/adcolony/d;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/AdColonyAd;D)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/jirbo/adcolony/d$6;->c:Lcom/jirbo/adcolony/d;

    iput-object p3, p0, Lcom/jirbo/adcolony/d$6;->a:Lcom/jirbo/adcolony/AdColonyAd;

    iput-wide p4, p0, Lcom/jirbo/adcolony/d$6;->b:D

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/j;-><init>(Lcom/jirbo/adcolony/d;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 155
    sget-boolean v0, Lcom/jirbo/adcolony/a;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/d$6;->a:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->w:Lcom/jirbo/adcolony/n$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/d$6;->a:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->w:Lcom/jirbo/adcolony/n$c;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$c;->a:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/jirbo/adcolony/d$6;->b:D

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 157
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "V4VC validated."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 158
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->o:Z

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d$6;->o:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    iget-wide v2, p0, Lcom/jirbo/adcolony/d$6;->b:D

    iget-object v1, p0, Lcom/jirbo/adcolony/d$6;->a:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v2, v3, v1}, Lcom/jirbo/adcolony/t;->a(DLcom/jirbo/adcolony/AdColonyAd;)V

    .line 161
    return-void
.end method
