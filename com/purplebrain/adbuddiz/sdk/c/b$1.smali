.class final Lcom/purplebrain/adbuddiz/sdk/c/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/purplebrain/adbuddiz/sdk/c/b;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/c/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/c/b$1;->b:Lcom/purplebrain/adbuddiz/sdk/c/b;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/c/b$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/b$1;->b:Lcom/purplebrain/adbuddiz/sdk/c/b;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/c/b$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/c/b;->c(Landroid/content/Context;)V

    return-void
.end method
