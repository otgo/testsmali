.class final Lcom/fyber/utils/e;
.super Ljava/lang/Object;
.source "FyberLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fyber/utils/FyberLogger$Level;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/Exception;

.field final synthetic e:Lcom/fyber/utils/FyberLogger;


# direct methods
.method constructor <init>(Lcom/fyber/utils/FyberLogger;Lcom/fyber/utils/FyberLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/fyber/utils/e;->e:Lcom/fyber/utils/FyberLogger;

    iput-object p2, p0, Lcom/fyber/utils/e;->a:Lcom/fyber/utils/FyberLogger$Level;

    iput-object p3, p0, Lcom/fyber/utils/e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/fyber/utils/e;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/fyber/utils/e;->d:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 140
    iget-object v0, p0, Lcom/fyber/utils/e;->e:Lcom/fyber/utils/FyberLogger;

    invoke-static {v0}, Lcom/fyber/utils/FyberLogger;->a(Lcom/fyber/utils/FyberLogger;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/LoggerListener;

    .line 141
    iget-object v2, p0, Lcom/fyber/utils/e;->a:Lcom/fyber/utils/FyberLogger$Level;

    iget-object v3, p0, Lcom/fyber/utils/e;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/fyber/utils/e;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/fyber/utils/e;->d:Ljava/lang/Exception;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/fyber/utils/LoggerListener;->log(Lcom/fyber/utils/FyberLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method
