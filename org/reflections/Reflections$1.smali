.class Lorg/reflections/Reflections$1;
.super Ljava/lang/Object;
.source "Reflections.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/Reflections;->scan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/reflections/Reflections;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lorg/reflections/Reflections;Ljava/net/URL;)V
    .locals 0
    .param p1, "this$0"    # Lorg/reflections/Reflections;

    .prologue
    .line 197
    iput-object p1, p0, Lorg/reflections/Reflections$1;->this$0:Lorg/reflections/Reflections;

    iput-object p2, p0, Lorg/reflections/Reflections$1;->val$url:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 199
    sget-object v0, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] scanning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/reflections/Reflections$1;->val$url:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/reflections/Reflections$1;->this$0:Lorg/reflections/Reflections;

    iget-object v1, p0, Lorg/reflections/Reflections$1;->val$url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Lorg/reflections/Reflections;->scan(Ljava/net/URL;)V

    .line 201
    return-void
.end method
