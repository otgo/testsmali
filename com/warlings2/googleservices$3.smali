.class final Lcom/warlings2/googleservices$3;
.super Ljava/lang/Object;
.source "googleservices.java"

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;


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
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedToRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public onDisconnectedFromRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "------------------ onDisconnectedFromRoom -----------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    sput-object v2, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/warlings2/googleservices;->access$102(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 218
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/warlings2/googleservices;->access$202(Z)Z

    .line 219
    sput-object v2, Lcom/warlings2/googleservices;->other_player_participant_id:Ljava/lang/String;

    .line 220
    const/4 v0, 0x0

    sput-boolean v0, Lcom/warlings2/googleservices;->is_room_connected:Z

    .line 222
    return-void
.end method

.method public onP2PConnected(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public onP2PDisconnected(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 225
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[Warlings] onP2PDisconnected"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public onPeerDeclined(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 229
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "------------------ onPeerDeclined -----------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "--- googleservices__leave_room ---"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v1, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v2, Lcom/warlings2/googleservices;->room_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->leave(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V

    .line 235
    :cond_0
    sput-object v4, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/warlings2/googleservices;->access$102(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 237
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/warlings2/googleservices;->access$202(Z)Z

    .line 238
    sput-object v4, Lcom/warlings2/googleservices;->other_player_participant_id:Ljava/lang/String;

    .line 239
    const/4 v0, 0x0

    sput-boolean v0, Lcom/warlings2/googleservices;->is_room_connected:Z

    .line 240
    return-void
.end method

.method public onPeerInvitedToRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    return-void
.end method

.method public onPeerJoined(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    return-void
.end method

.method public onPeerLeft(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 245
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "------------------ onPeerLeft -----------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v1, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v2, Lcom/warlings2/googleservices;->room_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->leave(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V

    .line 250
    :cond_0
    sput-object v4, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/warlings2/googleservices;->access$102(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 252
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/warlings2/googleservices;->access$202(Z)Z

    .line 253
    sput-object v4, Lcom/warlings2/googleservices;->other_player_participant_id:Ljava/lang/String;

    .line 254
    const/4 v0, 0x0

    sput-boolean v0, Lcom/warlings2/googleservices;->is_room_connected:Z

    .line 255
    return-void
.end method

.method public onPeersConnected(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    return-void
.end method

.method public onPeersDisconnected(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 259
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "------------------ onPeersDisconnected -----------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v0, :cond_0

    .line 261
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v1, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v2, Lcom/warlings2/googleservices;->room_update_listener:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->leave(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V

    .line 264
    :cond_0
    sput-object v4, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/warlings2/googleservices;->access$102(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 266
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/warlings2/googleservices;->access$202(Z)Z

    .line 267
    sput-object v4, Lcom/warlings2/googleservices;->other_player_participant_id:Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    sput-boolean v0, Lcom/warlings2/googleservices;->is_room_connected:Z

    .line 269
    return-void
.end method

.method public onRoomAutoMatching(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public onRoomConnecting(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 0

    .prologue
    .line 271
    return-void
.end method
