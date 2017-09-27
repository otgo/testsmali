.class final Lcom/purplebrain/adbuddiz/sdk/a/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/purplebrain/adbuddiz/sdk/a/b;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b$4;->a:Lcom/purplebrain/adbuddiz/sdk/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b$4;->a:Lcom/purplebrain/adbuddiz/sdk/a/b;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/b;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
