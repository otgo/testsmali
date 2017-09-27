.class Lcom/warlings2/googleservices$4;
.super Ljava/lang/Object;
.source "googleservices.java"

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warlings2/googleservices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/warlings2/googleservices;


# direct methods
.method constructor <init>(Lcom/warlings2/googleservices;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/warlings2/googleservices$4;->this$0:Lcom/warlings2/googleservices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvitationReceived(Lcom/google/android/gms/games/multiplayer/Invitation;)V
    .locals 4

    .prologue
    .line 276
    sget-object v0, Lcom/warlings2/googleservices;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v0, :cond_0

    .line 277
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----- There was a room when onInvitationReceived -----"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    :goto_0
    return-void

    .line 281
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 282
    const-string v1, "New Game"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 283
    const-string v1, "One of your friends is inviting you to a game."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Accept! :)"

    new-instance v3, Lcom/warlings2/googleservices$4$2;

    invoke-direct {v3, p0, p1}, Lcom/warlings2/googleservices$4$2;-><init>(Lcom/warlings2/googleservices$4;Lcom/google/android/gms/games/multiplayer/Invitation;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Decline. :("

    new-instance v3, Lcom/warlings2/googleservices$4$1;

    invoke-direct {v3, p0, p1}, Lcom/warlings2/googleservices$4$1;-><init>(Lcom/warlings2/googleservices$4;Lcom/google/android/gms/games/multiplayer/Invitation;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 306
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onInvitationRemoved(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 312
    return-void
.end method
