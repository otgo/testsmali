.class Lcom/warlings2/googleservices$4$1;
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
    .line 251
    iput-object p1, p0, Lcom/warlings2/googleservices$4$1;->this$1:Lcom/warlings2/googleservices$4;

    iput-object p2, p0, Lcom/warlings2/googleservices$4$1;->val$inv:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 253
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v1, Lcom/warlings2/googleservices;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/warlings2/googleservices$4$1;->val$inv:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v2}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->declineInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 254
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 255
    return-void
.end method
