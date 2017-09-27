.class final Lcom/warlings2/googleservices$11;
.super Ljava/lang/Object;
.source "googleservices.java"

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warlings2/googleservices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
    .locals 5

    .prologue
    .line 572
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;->getMessageData()[B

    move-result-object v0

    .line 573
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 574
    invoke-static {}, Lcom/warlings2/googleservices;->access$100()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 575
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 576
    invoke-static {}, Lcom/warlings2/googleservices;->access$100()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    monitor-exit v1

    .line 579
    return-void

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
