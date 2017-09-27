.class public Lcom/warlings2/WarlingsActivity;
.super Lcom/ideaworks3d/marmalade/LoaderActivity;
.source "WarlingsActivity.java"


# static fields
.field public static final RC_SELECT_PLAYERS:I = 0x2710


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 59
    const/16 v0, 0x2710

    if-ne p1, v0, :cond_3

    .line 60
    if-eq p2, v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 66
    const-string v0, "players"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 70
    sget-object v0, Lcom/warlings2/googleservices;->room_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-static {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->builder(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    sget-object v2, Lcom/warlings2/googleservices;->real_time_message_listener:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setMessageReceivedListener(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    sget-object v2, Lcom/warlings2/googleservices;->room_status_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setRoomStatusUpdateListener(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v2

    .line 74
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/warlings2/googleservices;->other_player_participant_id:Ljava/lang/String;

    .line 76
    invoke-virtual {v2, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->addPlayersToInvite(Ljava/util/ArrayList;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v2, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->create(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    goto :goto_0

    .line 80
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "------- onActivityResult invitees.size() == 0 ---------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_3
    const/16 v0, 0x2713

    if-ne p1, v0, :cond_4

    .line 83
    if-ne p2, v1, :cond_0

    .line 84
    sget-object v0, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 86
    :cond_4
    sget v0, Lcom/warlings2/googleservices;->FYBER_INTENT_ID:I

    if-ne p1, v0, :cond_0

    .line 87
    sget v0, Lcom/warlings2/googleservices;->callback:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 88
    invoke-static {}, Lcom/warlings2/googleservices;->ad_closed()V

    goto :goto_0

    .line 90
    :cond_5
    invoke-static {p0}, Lcom/warlings2/googleservices;->request_fyber_ad(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onBackPressed()V

    .line 127
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onDestroy()V

    .line 122
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onPause()V

    .line 104
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onResume()V

    .line 110
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/warlings2/googleservices;->fyber_intent:Landroid/content/Intent;

    .line 111
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->enableLogging(Z)Z

    .line 112
    const-string v0, "35843"

    const/4 v1, 0x0

    const-string v2, "473add42d509d8f1ec9130388e8b20b8"

    invoke-static {v0, v1, v2, p0}, Lcom/sponsorpay/SponsorPay;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    .line 113
    invoke-static {p0}, Lcom/warlings2/googleservices;->request_fyber_ad(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v1, "Fyber"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onStop()V

    .line 99
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onWindowFocusChanged(Z)V

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/warlings2/WarlingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 135
    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 143
    :cond_0
    return-void
.end method
