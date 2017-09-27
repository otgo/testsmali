.class Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;
.super Ljava/lang/Object;
.source "LoaderThread.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerListener"
.end annotation


# instance fields
.field m_channel:I

.field final synthetic this$1:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;


# direct methods
.method constructor <init>(Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;I)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->this$1:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput p2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->m_channel:I

    .line 167
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->this$1:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->access$300(Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;)[I

    move-result-object v0

    iget v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->m_channel:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    .line 181
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->this$1:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->access$300(Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;)[I

    move-result-object v0

    iget v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->m_channel:I

    aget v0, v0, v1

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->this$1:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->PlaybackCompleted:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    iget v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->m_channel:I

    invoke-static {v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->access$000(Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;I)V

    .line 184
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->this$1:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    iget v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->m_channel:I

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioStop(I)V

    .line 201
    :goto_0
    return-void

    .line 190
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->this$1:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->access$100(Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;)[Landroid/media/MediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->m_channel:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->this$1:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Started:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    iget v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->m_channel:I

    invoke-static {v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->access$000(Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;I)V

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->this$1:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Error:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    iget v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->m_channel:I

    invoke-static {v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->access$000(Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;I)V

    .line 172
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->this$1:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->access$100(Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;)[Landroid/media/MediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->m_channel:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 173
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->this$1:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Idle:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    iget v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->m_channel:I

    invoke-static {v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->access$000(Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;I)V

    .line 174
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->this$1:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    iget v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;->m_channel:I

    invoke-static {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->access$200(Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;I)V

    .line 175
    const/4 v0, 0x1

    return v0
.end method
