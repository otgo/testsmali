.class Lcom/jirbo/adcolony/d$9;
.super Lcom/jirbo/adcolony/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jirbo/adcolony/AdColonyAd;

.field final synthetic d:Lcom/jirbo/adcolony/d;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/jirbo/adcolony/d$9;->d:Lcom/jirbo/adcolony/d;

    iput-object p3, p0, Lcom/jirbo/adcolony/d$9;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/jirbo/adcolony/d$9;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/jirbo/adcolony/d$9;->c:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/j;-><init>(Lcom/jirbo/adcolony/d;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/jirbo/adcolony/d$9;->o:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    iget-object v1, p0, Lcom/jirbo/adcolony/d$9;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/d$9;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/jirbo/adcolony/k;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    iget-object v3, p0, Lcom/jirbo/adcolony/d$9;->c:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 229
    return-void
.end method
