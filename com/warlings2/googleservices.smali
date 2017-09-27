.class public Lcom/warlings2/googleservices;
.super Ljava/lang/Object;
.source "googleservices.java"


# static fields
.field public static final CONNECTING_RESULT:I = 0x2713

.field public static final DIAMONDS:I = 0x0

.field public static final FRAG_GRENADE:I = 0x1

.field public static final FYBER:Ljava/lang/String; = "Fyber"

.field public static final FYBER_INTENT_ID:I = 0x162e

.field public static final INTERSTITIAL:Ljava/lang/String; = "INTERSTITIAL"

.field public static final OFFERWALL:Ljava/lang/String; = "OFFERWALL"

.field public static final RC_WAITING_ROOM:I = 0x2712

.field public static final REWARDED_VIDEO:Ljava/lang/String; = "REWARDED_VIDEO"

.field public static final REWARDED_VIDEO_REQUEST_CODE:I = 0x29a

.field public static final SUPERSONIC:Ljava/lang/String; = "Supersonic"

.field public static final TAG:Ljava/lang/String; = "googleservices"

.field public static callback:I

.field public static client:Lcom/google/android/gms/common/api/GoogleApiClient;

.field public static fyber_intent:Landroid/content/Intent;

.field private static fyber_request_callback:Lcom/fyber/requesters/RequestCallback;

.field private static is_first_attempt_to_connect:Z

.field private static is_hosting:Z

.field public static is_room_connected:Z

.field public static mMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

.field private static messages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static other_player_participant_id:Ljava/lang/String;

.field public static real_time_message_listener:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

.field public static room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

.field public static room_status_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

.field public static room_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

.field private static send_callback:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;

.field private static show_when_ready:Z


# instance fields
.field private adBuddiz:Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

.field private adbuddiz_delegate:Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;

.field private bos:Ljava/io/ByteArrayOutputStream;

.field connection_callback:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field connection_failed_listener:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field private current_message_number:J

.field public on_invitation_received_listener:Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;

.field supersonicOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

.field supersonicRewardeListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 95
    sput v0, Lcom/warlings2/googleservices;->callback:I

    .line 98
    sput-boolean v0, Lcom/warlings2/googleservices;->show_when_ready:Z

    .line 129
    sput-object v1, Lcom/warlings2/googleservices;->fyber_intent:Landroid/content/Intent;

    .line 140
    new-instance v0, Lcom/warlings2/googleservices$2;

    invoke-direct {v0}, Lcom/warlings2/googleservices$2;-><init>()V

    sput-object v0, Lcom/warlings2/googleservices;->fyber_request_callback:Lcom/fyber/requesters/RequestCallback;

    .line 205
    sput-object v1, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 211
    new-instance v0, Lcom/warlings2/googleservices$3;

    invoke-direct {v0}, Lcom/warlings2/googleservices$3;-><init>()V

    sput-object v0, Lcom/warlings2/googleservices;->room_status_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    .line 508
    new-instance v0, Lcom/warlings2/googleservices$10;

    invoke-direct {v0}, Lcom/warlings2/googleservices$10;-><init>()V

    sput-object v0, Lcom/warlings2/googleservices;->room_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    .line 569
    new-instance v0, Lcom/warlings2/googleservices$11;

    invoke-direct {v0}, Lcom/warlings2/googleservices$11;-><init>()V

    sput-object v0, Lcom/warlings2/googleservices;->real_time_message_listener:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    .line 669
    new-instance v0, Lcom/warlings2/googleservices$12;

    invoke-direct {v0}, Lcom/warlings2/googleservices$12;-><init>()V

    sput-object v0, Lcom/warlings2/googleservices;->send_callback:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/warlings2/googleservices$1;

    invoke-direct {v0, p0}, Lcom/warlings2/googleservices$1;-><init>(Lcom/warlings2/googleservices;)V

    iput-object v0, p0, Lcom/warlings2/googleservices;->adbuddiz_delegate:Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;

    .line 274
    new-instance v0, Lcom/warlings2/googleservices$4;

    invoke-direct {v0, p0}, Lcom/warlings2/googleservices$4;-><init>(Lcom/warlings2/googleservices;)V

    iput-object v0, p0, Lcom/warlings2/googleservices;->on_invitation_received_listener:Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;

    .line 315
    new-instance v0, Lcom/warlings2/googleservices$5;

    invoke-direct {v0, p0}, Lcom/warlings2/googleservices$5;-><init>(Lcom/warlings2/googleservices;)V

    iput-object v0, p0, Lcom/warlings2/googleservices;->supersonicRewardeListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    .line 367
    new-instance v0, Lcom/warlings2/googleservices$6;

    invoke-direct {v0, p0}, Lcom/warlings2/googleservices$6;-><init>(Lcom/warlings2/googleservices;)V

    iput-object v0, p0, Lcom/warlings2/googleservices;->supersonicOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warlings2/googleservices;->bos:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/warlings2/googleservices;->show_when_ready:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .prologue
    .line 80
    sput-boolean p0, Lcom/warlings2/googleservices;->show_when_ready:Z

    return p0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .prologue
    .line 80
    sput-object p0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/warlings2/googleservices;->is_first_attempt_to_connect:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .prologue
    .line 80
    sput-boolean p0, Lcom/warlings2/googleservices;->is_first_attempt_to_connect:Z

    return p0
.end method

.method static synthetic access$302(Lcom/warlings2/googleservices;J)J
    .locals 1

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/warlings2/googleservices;->current_message_number:J

    return-wide p1
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 80
    invoke-static {}, Lcom/warlings2/googleservices;->show_multiplayer_waiting_screen()V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 80
    invoke-static {p0}, Lcom/warlings2/googleservices;->hash(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/warlings2/googleservices;->is_hosting:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    .prologue
    .line 80
    sput-boolean p0, Lcom/warlings2/googleservices;->is_hosting:Z

    return p0
.end method

.method public static native ad_closed()V
.end method

.method public static native give_reward(II)V
.end method

.method private static hash(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 192
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 193
    const/4 v0, 0x7

    move v2, v1

    .line 194
    :goto_0
    array-length v3, v4

    if-ge v2, v3, :cond_0

    .line 195
    mul-int/lit8 v0, v0, 0x1f

    aget-byte v3, v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v0

    .line 194
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    move v0, v1

    .line 199
    :cond_0
    return v0
.end method

.method public static request_fyber_ad(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 134
    :try_start_0
    sget-object v0, Lcom/warlings2/googleservices;->fyber_request_callback:Lcom/fyber/requesters/RequestCallback;

    invoke-static {v0}, Lcom/fyber/requesters/InterstitialRequester;->create(Lcom/fyber/requesters/RequestCallback;)Lcom/fyber/requesters/InterstitialRequester;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fyber/requesters/InterstitialRequester;->request(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    const-string v1, "Fyber"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static native show_multiplayer_waiting_screen()V
.end method


# virtual methods
.method public googleserivces__read_float()F
    .locals 8

    .prologue
    .line 727
    sget-object v0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/warlings2/googleservices;->current_message_number:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    .line 728
    sget-object v0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/warlings2/googleservices;->current_message_number:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    sget-object v2, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    monitor-enter v2

    .line 730
    :try_start_0
    sget-object v0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    iget-wide v4, p0, Lcom/warlings2/googleservices;->current_message_number:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    iget-wide v4, p0, Lcom/warlings2/googleservices;->current_message_number:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/warlings2/googleservices;->current_message_number:J

    .line 732
    monitor-exit v2

    .line 735
    :cond_0
    return v1

    .line 732
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public googleservices__auto_match()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    .line 586
    invoke-static {v0, v0, v2, v3}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->createAutoMatchCriteria(IIJ)Landroid/os/Bundle;

    move-result-object v0

    .line 587
    iput-wide v2, p0, Lcom/warlings2/googleservices;->current_message_number:J

    .line 590
    sget-object v1, Lcom/warlings2/googleservices;->room_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-static {v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->builder(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setAutoMatchCriteria(Landroid/os/Bundle;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/warlings2/googleservices;->real_time_message_listener:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setMessageReceivedListener(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/warlings2/googleservices;->room_status_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setRoomStatusUpdateListener(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    move-result-object v0

    .line 597
    sget-object v1, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v2, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->create(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    .line 598
    return-void
.end method

.method public googleservices__close()V
    .locals 2

    .prologue
    .line 739
    sget-object v0, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/warlings2/googleservices;->googleservices__leave_room()V

    .line 742
    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Invitations:Lcom/google/android/gms/games/multiplayer/Invitations;

    sget-object v1, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/multiplayer/Invitations;->unregisterInvitationListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 743
    return-void
.end method

.method public googleservices__invite_players()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 602
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/warlings2/googleservices;->current_message_number:J

    .line 603
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v1, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, v2, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->getSelectOpponentsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;II)Landroid/content/Intent;

    move-result-object v0

    .line 604
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const/16 v2, 0x2710

    invoke-virtual {v1, v0, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 605
    return-void
.end method

.method public googleservices__is_connected()Z
    .locals 1

    .prologue
    .line 504
    sget-object v0, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public googleservices__is_hosting()Z
    .locals 1

    .prologue
    .line 616
    sget-object v0, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/warlings2/googleservices;->is_hosting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public googleservices__is_message_ready()Z
    .locals 4

    .prologue
    .line 697
    sget-object v1, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    monitor-enter v1

    .line 698
    :try_start_0
    sget-object v0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/warlings2/googleservices;->current_message_number:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    const/4 v0, 0x1

    monitor-exit v1

    .line 707
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public googleservices__is_other_player_connected()Z
    .locals 1

    .prologue
    .line 620
    sget-boolean v0, Lcom/warlings2/googleservices;->is_room_connected:Z

    return v0
.end method

.method public googleservices__is_room_connected()Z
    .locals 1

    .prologue
    .line 611
    sget-boolean v0, Lcom/warlings2/googleservices;->is_room_connected:Z

    return v0
.end method

.method public googleservices__leave_room()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 625
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "--- googleservices__leave_room ---"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 626
    sget-object v0, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v0, :cond_0

    .line 627
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "There was a room."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 628
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v1, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v2, Lcom/warlings2/googleservices;->room_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    sget-object v3, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v3}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->leave(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V

    .line 631
    :cond_0
    sput-object v4, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 632
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    .line 633
    const/4 v0, 0x1

    sput-boolean v0, Lcom/warlings2/googleservices;->is_first_attempt_to_connect:Z

    .line 634
    sput-object v4, Lcom/warlings2/googleservices;->other_player_participant_id:Ljava/lang/String;

    .line 635
    const/4 v0, 0x0

    sput-boolean v0, Lcom/warlings2/googleservices;->is_room_connected:Z

    .line 636
    return-void
.end method

.method public googleservices__read_int()I
    .locals 8

    .prologue
    .line 714
    sget-object v0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/warlings2/googleservices;->current_message_number:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 715
    sget-object v0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/warlings2/googleservices;->current_message_number:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    sget-object v2, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    monitor-enter v2

    .line 717
    :try_start_0
    sget-object v0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    iget-wide v4, p0, Lcom/warlings2/googleservices;->current_message_number:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    iget-wide v4, p0, Lcom/warlings2/googleservices;->current_message_number:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/warlings2/googleservices;->current_message_number:J

    .line 719
    monitor-exit v2

    .line 722
    :cond_0
    return v1

    .line 719
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public googleservices__send_message()V
    .locals 6

    .prologue
    .line 678
    sget-object v0, Lcom/warlings2/googleservices;->other_player_participant_id:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    sget-object v0, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v1, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v2, Lcom/warlings2/googleservices;->send_callback:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;

    iget-object v3, p0, Lcom/warlings2/googleservices;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    sget-object v4, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v4}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/warlings2/googleservices;->other_player_participant_id:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->sendReliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;[BLjava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warlings2/googleservices;->bos:Ljava/io/ByteArrayOutputStream;

    goto :goto_0
.end method

.method public googleservices__show_fullscreen_ad(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 170
    sput p2, Lcom/warlings2/googleservices;->callback:I

    .line 171
    const-string v0, "INTERSTITIAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const-string v0, "googleservices"

    const-string v1, "googleservices__show_fullscreen_ad AdBuddiz.showAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->showAd(Landroid/app/Activity;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const-string v0, "OFFERWALL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    const-string v0, "googleservices"

    const-string v1, "googleservices__show_fullscreen_ad showOfferwall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object v0, Lcom/warlings2/googleservices;->mMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/warlings2/googleservices;->mMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->showOfferwall()V

    goto :goto_0

    .line 179
    :cond_2
    const-string v0, "REWARDED_VIDEO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "googleservices"

    const-string v1, "googleservices__show_fullscreen_ad showRewardedVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v0, Lcom/warlings2/googleservices;->mMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->showRewardedVideo()V

    goto :goto_0
.end method

.method public googleservices__sign_in(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 411
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "googleservices__sign_in"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 412
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;->Info:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->setLogLevel(Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;)V

    .line 413
    const-string v0, "33eb1d64-46eb-4c98-aa50-ced9fc060c8e"

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->setPublisherKey(Ljava/lang/String;)V

    .line 414
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->cacheAds(Landroid/app/Activity;)V

    .line 415
    iget-object v0, p0, Lcom/warlings2/googleservices;->adbuddiz_delegate:Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->setDelegate(Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;)V

    .line 418
    sget-object v0, Lcom/warlings2/googleservices;->mMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Lcom/warlings2/googleservices$7;

    invoke-direct {v0, p0}, Lcom/warlings2/googleservices$7;-><init>(Lcom/warlings2/googleservices;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/warlings2/googleservices$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 438
    :cond_0
    sput-object v3, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 439
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    .line 440
    const/4 v0, 0x1

    sput-boolean v0, Lcom/warlings2/googleservices;->is_first_attempt_to_connect:Z

    .line 441
    sput-object v3, Lcom/warlings2/googleservices;->other_player_participant_id:Ljava/lang/String;

    .line 442
    sput-boolean v2, Lcom/warlings2/googleservices;->is_room_connected:Z

    .line 443
    sput-boolean v2, Lcom/warlings2/googleservices;->show_when_ready:Z

    .line 445
    new-instance v0, Lcom/warlings2/googleservices$8;

    invoke-direct {v0, p0, p1}, Lcom/warlings2/googleservices$8;-><init>(Lcom/warlings2/googleservices;Z)V

    iput-object v0, p0, Lcom/warlings2/googleservices;->connection_callback:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .line 475
    new-instance v0, Lcom/warlings2/googleservices$9;

    invoke-direct {v0, p0}, Lcom/warlings2/googleservices$9;-><init>(Lcom/warlings2/googleservices;)V

    iput-object v0, p0, Lcom/warlings2/googleservices;->connection_failed_listener:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .line 489
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v2, p0, Lcom/warlings2/googleservices;->connection_callback:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v3, p0, Lcom/warlings2/googleservices;->connection_failed_listener:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 493
    sget-object v1, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 499
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    sput-object v0, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 500
    sget-object v0, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 501
    return-void
.end method

.method public googleservices__signout()V
    .locals 1

    .prologue
    .line 746
    sget-object v0, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 747
    return-void
.end method

.method public googleservices__start_message()V
    .locals 4

    .prologue
    .line 640
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "googleservices__start_message - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/warlings2/googleservices;->current_message_number:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 641
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/warlings2/googleservices;->bos:Ljava/io/ByteArrayOutputStream;

    .line 642
    iget-wide v0, p0, Lcom/warlings2/googleservices;->current_message_number:J

    invoke-virtual {p0, v0, v1}, Lcom/warlings2/googleservices;->googleservices__write_long(J)V

    .line 643
    iget-wide v0, p0, Lcom/warlings2/googleservices;->current_message_number:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/warlings2/googleservices;->current_message_number:J

    .line 644
    return-void
.end method

.method public googleservices__write_int(I)V
    .locals 2

    .prologue
    .line 659
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 660
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 662
    :try_start_0
    iget-object v1, p0, Lcom/warlings2/googleservices;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 664
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public googleservices__write_long(J)V
    .locals 3

    .prologue
    .line 648
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 649
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 651
    :try_start_0
    iget-object v1, p0, Lcom/warlings2/googleservices;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_0
    return-void

    .line 652
    :catch_0
    move-exception v0

    .line 653
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
