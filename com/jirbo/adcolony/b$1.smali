.class Lcom/jirbo/adcolony/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/b;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/b;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/jirbo/adcolony/b$1;->a:Lcom/jirbo/adcolony/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 194
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    .line 196
    invoke-static {}, Lcom/jirbo/adcolony/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :catch_0
    move-exception v1

    goto :goto_1

    .line 209
    :cond_0
    return-void
.end method
