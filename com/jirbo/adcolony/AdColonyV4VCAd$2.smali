.class Lcom/jirbo/adcolony/AdColonyV4VCAd$2;
.super Lcom/jirbo/adcolony/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdColonyV4VCAd;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/AdColonyV4VCAd;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColonyV4VCAd;Lcom/jirbo/adcolony/d;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd$2;->a:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/j;-><init>(Lcom/jirbo/adcolony/d;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd$2;->o:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd$2;->a:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyV4VCAd;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd$2;->a:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 157
    return-void
.end method
