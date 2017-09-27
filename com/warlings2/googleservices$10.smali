.class final Lcom/warlings2/googleservices$10;
.super Ljava/lang/Object;
.source "googleservices.java"

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;


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
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onJoinedRoom(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3

    .prologue
    .line 510
    if-eqz p1, :cond_0

    .line 511
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJoinedRoom status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v1, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7fffffff

    invoke-interface {v0, v1, p2, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->getWaitingRoomIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;

    move-result-object v0

    .line 517
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const/16 v2, 0x2712

    invoke-virtual {v1, v0, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onLeftRoom(ILjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 521
    sput-object v0, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 522
    sput-object v0, Lcom/warlings2/googleservices;->other_player_participant_id:Ljava/lang/String;

    .line 523
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/warlings2/googleservices;->access$202(Z)Z

    .line 524
    const/4 v0, 0x0

    sput-boolean v0, Lcom/warlings2/googleservices;->is_room_connected:Z

    .line 525
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/warlings2/googleservices;->access$102(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 526
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onLeftRoom"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method public onRoomConnected(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 530
    sget-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    sget-object v3, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v3}, Lcom/google/android/gms/games/Players;->getCurrentPlayer(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/Player;

    move-result-object v0

    .line 531
    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-interface {p2, v0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipantId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 534
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipantIds()Ljava/util/ArrayList;

    move-result-object v4

    .line 535
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 536
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 537
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "paricipant: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", hash: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 539
    sput-object v0, Lcom/warlings2/googleservices;->other_player_participant_id:Ljava/lang/String;

    goto :goto_0

    .line 545
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/warlings2/googleservices;->access$500(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/warlings2/googleservices;->access$500(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v6, v0

    .line 546
    const-wide/16 v8, 0x2

    rem-long/2addr v6, v8

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v6, v4

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/warlings2/googleservices;->access$602(Z)Z

    .line 549
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "----------------------------------------------------------"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 550
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRoomConnected is_hosting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/warlings2/googleservices;->access$600()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 551
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "----------------------------------------------------------"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 552
    sput-object p2, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 553
    sput-boolean v1, Lcom/warlings2/googleservices;->is_room_connected:Z

    .line 554
    return-void

    :cond_2
    move v0, v2

    .line 546
    goto :goto_1
.end method

.method public onRoomCreated(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3

    .prologue
    .line 557
    if-eqz p1, :cond_0

    .line 558
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRoomCreated status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 566
    :goto_0
    return-void

    .line 563
    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v1, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7fffffff

    invoke-interface {v0, v1, p2, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->getWaitingRoomIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;

    move-result-object v0

    .line 564
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const/16 v2, 0x2712

    invoke-virtual {v1, v0, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 565
    sput-object p2, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    goto :goto_0
.end method
