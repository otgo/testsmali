.class public abstract Lcom/ideaworks3d/marmalade/LoaderActivitySlave;
.super Ljava/lang/Object;
.source "LoaderActivitySlave.java"

# interfaces
.implements Lcom/ideaworks3d/marmalade/event/ActivityResultListener;
.implements Lcom/ideaworks3d/marmalade/SuspendResumeListener;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->addSuspendResumeListener(Lcom/ideaworks3d/marmalade/SuspendResumeListener;)V

    .line 14
    invoke-static {p0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->addActivityResultListener(Lcom/ideaworks3d/marmalade/event/ActivityResultListener;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public onActivityResultEvent(Lcom/ideaworks3d/marmalade/event/ActivityResultEvent;)V
    .locals 3

    .prologue
    .line 29
    const-string v0, "LoaderActivitySlave"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResultEvent request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/ideaworks3d/marmalade/event/ActivityResultEvent;->m_requestCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/ideaworks3d/marmalade/event/ActivityResultEvent;->m_resultCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget v0, p1, Lcom/ideaworks3d/marmalade/event/ActivityResultEvent;->m_requestCode:I

    iget v1, p1, Lcom/ideaworks3d/marmalade/event/ActivityResultEvent;->m_resultCode:I

    iget-object v2, p1, Lcom/ideaworks3d/marmalade/event/ActivityResultEvent;->m_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivitySlave;->onActivityResult(IILandroid/content/Intent;)V

    .line 31
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public onSuspendResumeEvent(Lcom/ideaworks3d/marmalade/SuspendResumeEvent;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;->eventType:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->RESUME:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    if-ne v0, v1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderActivitySlave;->onResume()V

    .line 38
    :cond_0
    iget-object v0, p1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;->eventType:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->SUSPEND:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    if-ne v0, v1, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderActivitySlave;->onPause()V

    .line 42
    :cond_1
    iget-object v0, p1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;->eventType:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->SHUTDOWN:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    if-ne v0, v1, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderActivitySlave;->onDestroy()V

    .line 46
    :cond_2
    return-void
.end method
