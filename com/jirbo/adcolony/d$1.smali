.class Lcom/jirbo/adcolony/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/d;->a(Lcom/jirbo/adcolony/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/j;

.field final synthetic b:Lcom/jirbo/adcolony/d;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/j;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/jirbo/adcolony/d$1;->b:Lcom/jirbo/adcolony/d;

    iput-object p2, p0, Lcom/jirbo/adcolony/d$1;->a:Lcom/jirbo/adcolony/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jirbo/adcolony/d$1;->b:Lcom/jirbo/adcolony/d;

    iget-object v1, v0, Lcom/jirbo/adcolony/d;->h:Ljava/util/ArrayList;

    monitor-enter v1

    .line 45
    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d$1;->b:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jirbo/adcolony/d$1;->a:Lcom/jirbo/adcolony/j;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/jirbo/adcolony/d$1;->b:Lcom/jirbo/adcolony/d;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/d;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/d$1;->b:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/d;->g()V

    .line 49
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
