.class final Lcom/purplebrain/adbuddiz/sdk/a/f$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$5;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$5;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/a/f;->s:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
