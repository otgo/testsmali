.class final Lcom/purplebrain/adbuddiz/sdk/a/f$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/a/f;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$4;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$4;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$4;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    iget-boolean v2, v2, Lcom/purplebrain/adbuddiz/sdk/a/f;->z:Z

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/purplebrain/adbuddiz/sdk/a/f;->a(ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABVASTAdDisplayer#onToggleMuteButtonClicked.onClick()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
