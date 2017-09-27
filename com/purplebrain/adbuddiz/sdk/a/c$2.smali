.class final Lcom/purplebrain/adbuddiz/sdk/a/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/d/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/purplebrain/adbuddiz/sdk/a/c;->y()Lcom/purplebrain/adbuddiz/sdk/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/a/c;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/c$2;->a:Lcom/purplebrain/adbuddiz/sdk/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c$2;->a:Lcom/purplebrain/adbuddiz/sdk/a/c;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/c;->q:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c$2;->a:Lcom/purplebrain/adbuddiz/sdk/a/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/a/c;->q:Ljava/lang/Long;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c$2;->a:Lcom/purplebrain/adbuddiz/sdk/a/c;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->u()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c$2;->a:Lcom/purplebrain/adbuddiz/sdk/a/c;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->n()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABAdDisplayer#OnCloseButtonClickListener.onCloseButtonClicked()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
