.class Lcom/warlings2/googleservices$8;
.super Ljava/lang/Object;
.source "googleservices.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warlings2/googleservices;->googleservices__sign_in(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/warlings2/googleservices;

.field final synthetic val$show_ad:Z


# direct methods
.method constructor <init>(Lcom/warlings2/googleservices;Z)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/warlings2/googleservices$8;->this$0:Lcom/warlings2/googleservices;

    iput-boolean p2, p0, Lcom/warlings2/googleservices$8;->val$show_ad:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 447
    if-eqz p1, :cond_1

    .line 448
    const-string v0, "invitation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 449
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionCallbacks, is con nected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v3}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 450
    if-eqz v0, :cond_0

    .line 452
    sget-object v1, Lcom/warlings2/googleservices;->room_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-static {v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->builder(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/warlings2/googleservices;->real_time_message_listener:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setMessageReceivedListener(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/warlings2/googleservices;->room_status_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setRoomStatusUpdateListener(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v1

    .line 456
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setInvitationIdToAccept(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 457
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v2, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->join(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    .line 458
    invoke-static {}, Lcom/warlings2/googleservices;->access$400()V

    .line 465
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Invitations:Lcom/google/android/gms/games/multiplayer/Invitations;

    sget-object v1, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/warlings2/googleservices$8;->this$0:Lcom/warlings2/googleservices;

    iget-object v2, v2, Lcom/warlings2/googleservices;->on_invitation_received_listener:Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/multiplayer/Invitations;->registerInvitationListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V

    .line 466
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Calling native method: show_multiplayer_waiting_screen"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 467
    return-void

    .line 461
    :cond_1
    iget-boolean v0, p0, Lcom/warlings2/googleservices$8;->val$show_ad:Z

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/warlings2/googleservices$8;->this$0:Lcom/warlings2/googleservices;

    const-string v1, "INTERSTITIAL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/warlings2/googleservices;->googleservices__show_fullscreen_ad(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    .prologue
    .line 471
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onConnectionSuspended"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 472
    return-void
.end method
