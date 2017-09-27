.class Lcom/jirbo/adcolony/ad$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ad;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/ad;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ad;)V
    .locals 0

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/jirbo/adcolony/ad$7;->a:Lcom/jirbo/adcolony/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$7;->a:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ad$7;->a:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/e;->setVisibility(I)V

    .line 1284
    :cond_0
    return-void
.end method
