.class public Lcom/warlings2/WarlingsActivity;
.super Lcom/ideaworks3d/marmalade/LoaderActivity;
.source "WarlingsActivity.java"


# static fields
.field public static final RC_SELECT_PLAYERS:I = 0x2710


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 62
    const/16 v0, 0x2710

    if-ne p1, v0, :cond_3

    .line 63
    if-eq p2, v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 69
    const-string v0, "players"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 73
    sget-object v0, Lcom/warlings2/googleservices;->room_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-static {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->builder(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    sget-object v2, Lcom/warlings2/googleservices;->real_time_message_listener:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setMessageReceivedListener(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    sget-object v2, Lcom/warlings2/googleservices;->room_status_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setRoomStatusUpdateListener(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v2

    .line 77
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/warlings2/googleservices;->other_player_participant_id:Ljava/lang/String;

    .line 79
    invoke-virtual {v2, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->addPlayersToInvite(Ljava/util/ArrayList;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 80
    invoke-virtual {v2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v2, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->create(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    goto :goto_0

    .line 83
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "------- onActivityResult invitees.size() == 0 ---------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_3
    const/16 v0, 0x2713

    if-ne p1, v0, :cond_4

    .line 86
    if-ne p2, v1, :cond_0

    .line 87
    sget-object v0, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 89
    :cond_4
    const/16 v0, 0x162e

    if-ne p1, v0, :cond_0

    .line 90
    sget v0, Lcom/warlings2/googleservices;->callback:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 91
    invoke-static {}, Lcom/warlings2/googleservices;->ad_closed()V

    goto :goto_0

    .line 93
    :cond_5
    invoke-static {p0}, Lcom/warlings2/googleservices;->request_fyber_ad(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onBackPressed()V

    .line 145
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v0

    sput-object v0, Lcom/warlings2/googleservices;->mMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    .line 102
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->setClientSideCallbacks(Z)V

    .line 103
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onDestroy()V

    .line 140
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onPause()V

    .line 113
    sget-object v0, Lcom/warlings2/googleservices;->mMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/warlings2/googleservices;->mMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    invoke-interface {v0, p0}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->onPause(Landroid/app/Activity;)V

    .line 116
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onResume()V

    .line 121
    sget-object v0, Lcom/warlings2/googleservices;->mMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/warlings2/googleservices;->mMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    invoke-interface {v0, p0}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->onResume(Landroid/app/Activity;)V

    .line 126
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/warlings2/googleservices;->fyber_intent:Landroid/content/Intent;

    .line 128
    const-string v0, "35843"

    invoke-static {v0, p0}, Lcom/fyber/Fyber;->with(Ljava/lang/String;Landroid/app/Activity;)Lcom/fyber/Fyber;

    move-result-object v0

    const-string v1, "473add42d509d8f1ec9130388e8b20b8"

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber;->withSecurityToken(Ljava/lang/String;)Lcom/fyber/Fyber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber;->start()Lcom/fyber/Fyber$Settings;

    .line 131
    invoke-static {p0}, Lcom/warlings2/googleservices;->request_fyber_ad(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string v1, "Fyber"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onStop()V

    .line 108
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onWindowFocusChanged(Z)V

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/warlings2/WarlingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 153
    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 161
    :cond_0
    return-void
.end method
