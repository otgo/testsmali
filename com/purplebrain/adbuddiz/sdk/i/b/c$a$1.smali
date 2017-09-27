.class public final Lcom/purplebrain/adbuddiz/sdk/i/b/c$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a$1;->a:Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a$1;->a:Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;->a:Landroid/content/Context;

    const-string v1, "A-"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a$1;->a:Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;

    iget v2, v2, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;->b:I

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a$1;->a:Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;->a:Landroid/content/Context;

    const-string v1, "I-"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a$1;->a:Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;

    iget v2, v2, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;->b:I

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a$1;->a:Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;->a:Landroid/content/Context;

    const-string v1, "MRAID"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a$1;->a:Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;

    iget v2, v2, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;->c:I

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->b(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a$1;->a:Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;->a:Landroid/content/Context;

    const-string v1, "RI"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a$1;->a:Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;

    iget v2, v2, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;->c:I

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABImpressionCounterHelper#AsyncCleanTask.execute"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABImpressionCounterHelper#AsyncCleanTask.execute()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
