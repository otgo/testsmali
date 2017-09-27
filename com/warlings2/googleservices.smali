.class public Lcom/warlings2/googleservices;
.super Ljava/lang/Object;
.source "googleservices.java"


# static fields
.field public static final CONNECTING_RESULT:I = 0x2713

.field public static FYBER_INTENT_ID:I = 0x0

.field public static final RC_WAITING_ROOM:I = 0x2712

.field public static callback:I

.field public static client:Lcom/google/android/gms/common/api/GoogleApiClient;

.field public static fyber_intent:Landroid/content/Intent;

.field private static fyber_listener:Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;

.field private static is_first_attempt_to_connect:Z

.field private static is_hosting:Z

.field public static is_room_connected:Z

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


# instance fields
.field private adBuddiz:Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

.field private adbuddiz_delegate:Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;

.field private bos:Ljava/io/ByteArrayOutputStream;

.field connection_callback:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field connection_failed_listener:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field private current_message_number:J

.field public on_invitation_received_listener:Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    const/16 v0, 0x162e

    sput v0, Lcom/warlings2/googleservices;->FYBER_INTENT_ID:I

    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/warlings2/googleservices;->callback:I

    .line 103
    sput-object v1, Lcom/warlings2/googleservices;->fyber_intent:Landroid/content/Intent;

    .line 113
    new-instance v0, Lcom/warlings2/googleservices$2;

    invoke-direct {v0}, Lcom/warlings2/googleservices$2;-><init>()V

    sput-object v0, Lcom/warlings2/googleservices;->fyber_listener:Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;

    .line 156
    sput-object v1, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 162
    new-instance v0, Lcom/warlings2/googleservices$3;

    invoke-direct {v0}, Lcom/warlings2/googleservices$3;-><init>()V

    sput-object v0, Lcom/warlings2/googleservices;->room_status_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    .line 351
    new-instance v0, Lcom/warlings2/googleservices$7;

    invoke-direct {v0}, Lcom/warlings2/googleservices$7;-><init>()V

    sput-object v0, Lcom/warlings2/googleservices;->room_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    .line 412
    new-instance v0, Lcom/warlings2/googleservices$8;

    invoke-direct {v0}, Lcom/warlings2/googleservices$8;-><init>()V

    sput-object v0, Lcom/warlings2/googleservices;->real_time_message_listener:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    .line 512
    new-instance v0, Lcom/warlings2/googleservices$9;

    invoke-direct {v0}, Lcom/warlings2/googleservices$9;-><init>()V

    sput-object v0, Lcom/warlings2/googleservices;->send_callback:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/warlings2/googleservices$1;

    invoke-direct {v0, p0}, Lcom/warlings2/googleservices$1;-><init>(Lcom/warlings2/googleservices;)V

    iput-object v0, p0, Lcom/warlings2/googleservices;->adbuddiz_delegate:Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;

    .line 225
    new-instance v0, Lcom/warlings2/googleservices$4;

    invoke-direct {v0, p0}, Lcom/warlings2/googleservices$4;-><init>(Lcom/warlings2/googleservices;)V

    iput-object v0, p0, Lcom/warlings2/googleservices;->on_invitation_received_listener:Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warlings2/googleservices;->bos:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .prologue
    .line 67
    sput-object p0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/warlings2/googleservices;->is_first_attempt_to_connect:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .prologue
    .line 67
    sput-boolean p0, Lcom/warlings2/googleservices;->is_first_attempt_to_connect:Z

    return p0
.end method

.method static synthetic access$202(Lcom/warlings2/googleservices;J)J
    .locals 1

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/warlings2/googleservices;->current_message_number:J

    return-wide p1
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 67
    invoke-static {}, Lcom/warlings2/googleservices;->show_multiplayer_waiting_screen()V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 67
    invoke-static {p0}, Lcom/warlings2/googleservices;->hash(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/warlings2/googleservices;->is_hosting:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .prologue
    .line 67
    sput-boolean p0, Lcom/warlings2/googleservices;->is_hosting:Z

    return p0
.end method

.method public static native ad_closed()V
.end method

.method private static hash(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 143
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 144
    const/4 v0, 0x7

    move v2, v1

    .line 145
    :goto_0
    array-length v3, v4

    if-ge v2, v3, :cond_0

    .line 146
    mul-int/lit8 v0, v0, 0x1f

    aget-byte v3, v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v0

    .line 145
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    move v0, v1

    .line 150
    :cond_0
    return v0
.end method

.method public static request_fyber_ad(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 107
    :try_start_0
    sget-object v0, Lcom/warlings2/googleservices;->fyber_listener:Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;

    invoke-static {p0, v0}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForInterstitialActivity(Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
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
    .line 570
    sget-object v0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/warlings2/googleservices;->current_message_number:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    .line 571
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

    .line 572
    sget-object v2, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    monitor-enter v2

    .line 573
    :try_start_0
    sget-object v0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    iget-wide v4, p0, Lcom/warlings2/googleservices;->current_message_number:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    iget-wide v4, p0, Lcom/warlings2/googleservices;->current_message_number:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/warlings2/googleservices;->current_message_number:J

    .line 575
    monitor-exit v2

    .line 578
    :cond_0
    return v1

    .line 575
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

    .line 429
    invoke-static {v0, v0, v2, v3}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->createAutoMatchCriteria(IIJ)Landroid/os/Bundle;

    move-result-object v0

    .line 430
    iput-wide v2, p0, Lcom/warlings2/googleservices;->current_message_number:J

    .line 433
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

    .line 439
    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    move-result-object v0

    .line 440
    sget-object v1, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v2, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->create(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    .line 441
    return-void
.end method

.method public googleservices__close()V
    .locals 2

    .prologue
    .line 582
    sget-object v0, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/warlings2/googleservices;->googleservices__leave_room()V

    .line 585
    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Invitations:Lcom/google/android/gms/games/multiplayer/Invitations;

    sget-object v1, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/multiplayer/Invitations;->unregisterInvitationListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 586
    return-void
.end method

.method public googleservices__invite_players()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 445
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/warlings2/googleservices;->current_message_number:J

    .line 446
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v1, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, v2, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->getSelectOpponentsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;II)Landroid/content/Intent;

    move-result-object v0

    .line 447
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const/16 v2, 0x2710

    invoke-virtual {v1, v0, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 448
    return-void
.end method

.method public googleservices__is_connected()Z
    .locals 1

    .prologue
    .line 347
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
    .line 459
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
    .line 540
    sget-object v1, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    monitor-enter v1

    .line 541
    :try_start_0
    sget-object v0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/warlings2/googleservices;->current_message_number:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    const/4 v0, 0x1

    monitor-exit v1

    .line 550
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 552
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
    .line 463
    sget-boolean v0, Lcom/warlings2/googleservices;->is_room_connected:Z

    return v0
.end method

.method public googleservices__is_room_connected()Z
    .locals 1

    .prologue
    .line 454
    sget-boolean v0, Lcom/warlings2/googleservices;->is_room_connected:Z

    return v0
.end method

.method public googleservices__leave_room()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 468
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "--- googleservices__leave_room ---"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 469
    sget-object v0, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v0, :cond_0

    .line 470
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "There was a room."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 471
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v1, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v2, Lcom/warlings2/googleservices;->room_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    sget-object v3, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v3}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->leave(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V

    .line 474
    :cond_0
    sput-object v4, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 475
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    .line 476
    const/4 v0, 0x1

    sput-boolean v0, Lcom/warlings2/googleservices;->is_first_attempt_to_connect:Z

    .line 477
    sput-object v4, Lcom/warlings2/googleservices;->other_player_participant_id:Ljava/lang/String;

    .line 478
    const/4 v0, 0x0

    sput-boolean v0, Lcom/warlings2/googleservices;->is_room_connected:Z

    .line 479
    return-void
.end method

.method public googleservices__read_int()I
    .locals 8

    .prologue
    .line 557
    sget-object v0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/warlings2/googleservices;->current_message_number:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 558
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

    .line 559
    sget-object v2, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    monitor-enter v2

    .line 560
    :try_start_0
    sget-object v0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    iget-wide v4, p0, Lcom/warlings2/googleservices;->current_message_number:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-wide v4, p0, Lcom/warlings2/googleservices;->current_message_number:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/warlings2/googleservices;->current_message_number:J

    .line 562
    monitor-exit v2

    .line 565
    :cond_0
    return v1

    .line 562
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
    .line 521
    sget-object v0, Lcom/warlings2/googleservices;->other_player_participant_id:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    sget-object v0, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
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

    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warlings2/googleservices;->bos:Ljava/io/ByteArrayOutputStream;

    goto :goto_0
.end method

.method public googleservices__show_fullscreen_ad(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 132
    sput p2, Lcom/warlings2/googleservices;->callback:I

    .line 133
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->showAd(Landroid/app/Activity;)V

    .line 134
    return-void
.end method

.method public googleservices__sign_in(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 276
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "googleservices__sign_in"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;->Info:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->setLogLevel(Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;)V

    .line 278
    const-string v0, "33eb1d64-46eb-4c98-aa50-ced9fc060c8e"

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->setPublisherKey(Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->cacheAds(Landroid/app/Activity;)V

    .line 280
    iget-object v0, p0, Lcom/warlings2/googleservices;->adbuddiz_delegate:Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->setDelegate(Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;)V

    .line 282
    sput-object v2, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/warlings2/googleservices;->messages:Ljava/util/HashMap;

    .line 284
    const/4 v0, 0x1

    sput-boolean v0, Lcom/warlings2/googleservices;->is_first_attempt_to_connect:Z

    .line 285
    sput-object v2, Lcom/warlings2/googleservices;->other_player_participant_id:Ljava/lang/String;

    .line 286
    const/4 v0, 0x0

    sput-boolean v0, Lcom/warlings2/googleservices;->is_room_connected:Z

    .line 288
    new-instance v0, Lcom/warlings2/googleservices$5;

    invoke-direct {v0, p0, p1}, Lcom/warlings2/googleservices$5;-><init>(Lcom/warlings2/googleservices;Z)V

    iput-object v0, p0, Lcom/warlings2/googleservices;->connection_callback:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .line 318
    new-instance v0, Lcom/warlings2/googleservices$6;

    invoke-direct {v0, p0}, Lcom/warlings2/googleservices$6;-><init>(Lcom/warlings2/googleservices;)V

    iput-object v0, p0, Lcom/warlings2/googleservices;->connection_failed_listener:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .line 332
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v2, p0, Lcom/warlings2/googleservices;->connection_callback:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v3, p0, Lcom/warlings2/googleservices;->connection_failed_listener:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 336
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

    .line 342
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    sput-object v0, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 343
    sget-object v0, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 344
    return-void
.end method

.method public googleservices__signout()V
    .locals 1

    .prologue
    .line 589
    sget-object v0, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 590
    return-void
.end method

.method public googleservices__start_message()V
    .locals 4

    .prologue
    .line 483
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

    .line 484
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/warlings2/googleservices;->bos:Ljava/io/ByteArrayOutputStream;

    .line 485
    iget-wide v0, p0, Lcom/warlings2/googleservices;->current_message_number:J

    invoke-virtual {p0, v0, v1}, Lcom/warlings2/googleservices;->googleservices__write_long(J)V

    .line 486
    iget-wide v0, p0, Lcom/warlings2/googleservices;->current_message_number:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/warlings2/googleservices;->current_message_number:J

    .line 487
    return-void
.end method

.method public googleservices__write_int(I)V
    .locals 2

    .prologue
    .line 502
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 503
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 505
    :try_start_0
    iget-object v1, p0, Lcom/warlings2/googleservices;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_0
    return-void

    .line 506
    :catch_0
    move-exception v0

    .line 507
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public googleservices__write_long(J)V
    .locals 3

    .prologue
    .line 491
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 492
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 494
    :try_start_0
    iget-object v1, p0, Lcom/warlings2/googleservices;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
