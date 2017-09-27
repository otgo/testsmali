.class Lcom/warlings2/googleservices$4$2;
.super Ljava/lang/Object;
.source "googleservices.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warlings2/googleservices$4;->onInvitationReceived(Lcom/google/android/gms/games/multiplayer/Invitation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/warlings2/googleservices$4;

.field final synthetic val$inv:Lcom/google/android/gms/games/multiplayer/Invitation;


# direct methods
.method constructor <init>(Lcom/warlings2/googleservices$4;Lcom/google/android/gms/games/multiplayer/Invitation;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/warlings2/googleservices$4$2;->this$1:Lcom/warlings2/googleservices$4;

    iput-object p2, p0, Lcom/warlings2/googleservices$4$2;->val$inv:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 288
    sget-object v0, Lcom/warlings2/googleservices;->room_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-static {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->builder(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/warlings2/googleservices;->real_time_message_listener:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setMessageReceivedListener(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/warlings2/googleservices;->room_status_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setRoomStatusUpdateListener(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/warlings2/googleservices$4$2;->val$inv:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setInvitationIdToAccept(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 293
    sget-object v1, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v2, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->join(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    .line 294
    iget-object v0, p0, Lcom/warlings2/googleservices$4$2;->this$1:Lcom/warlings2/googleservices$4;

    iget-object v0, v0, Lcom/warlings2/googleservices$4;->this$0:Lcom/warlings2/googleservices;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/warlings2/googleservices;->access$302(Lcom/warlings2/googleservices;J)J

    .line 296
    invoke-static {}, Lcom/warlings2/googleservices;->access$400()V

    .line 297
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 298
    return-void
.end method
