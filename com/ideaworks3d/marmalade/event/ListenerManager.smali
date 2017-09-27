.class public Lcom/ideaworks3d/marmalade/event/ListenerManager;
.super Ljava/lang/Object;
.source "ListenerManager.java"


# instance fields
.field private m_ActivityResultListeners:Lcom/ideaworks3d/marmalade/event/ActivityResultListenerList;

.field private m_KeyListeners:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/view/View$OnKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field private m_SuspendResumeListeners:Lcom/ideaworks3d/marmalade/event/SuspendResumeListenerList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/ideaworks3d/marmalade/event/ListenerManager;->m_SuspendResumeListeners:Lcom/ideaworks3d/marmalade/event/SuspendResumeListenerList;

    .line 9
    iput-object v0, p0, Lcom/ideaworks3d/marmalade/event/ListenerManager;->m_ActivityResultListeners:Lcom/ideaworks3d/marmalade/event/ActivityResultListenerList;

    .line 10
    iput-object v0, p0, Lcom/ideaworks3d/marmalade/event/ListenerManager;->m_KeyListeners:Ljava/util/Stack;

    .line 13
    const-string v0, "MARMALADE"

    const-string v1, "ListenerManager create lists"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v0, Lcom/ideaworks3d/marmalade/event/SuspendResumeListenerList;

    invoke-direct {v0}, Lcom/ideaworks3d/marmalade/event/SuspendResumeListenerList;-><init>()V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/event/ListenerManager;->m_SuspendResumeListeners:Lcom/ideaworks3d/marmalade/event/SuspendResumeListenerList;

    .line 15
    new-instance v0, Lcom/ideaworks3d/marmalade/event/ActivityResultListenerList;

    invoke-direct {v0}, Lcom/ideaworks3d/marmalade/event/ActivityResultListenerList;-><init>()V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/event/ListenerManager;->m_ActivityResultListeners:Lcom/ideaworks3d/marmalade/event/ActivityResultListenerList;

    .line 16
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/event/ListenerManager;->m_KeyListeners:Ljava/util/Stack;

    .line 17
    return-void
.end method


# virtual methods
.method public addActivityResultListener(Lcom/ideaworks3d/marmalade/event/ActivityResultListener;)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/event/ListenerManager;->m_ActivityResultListeners:Lcom/ideaworks3d/marmalade/event/ActivityResultListenerList;

    invoke-virtual {v0, p1}, Lcom/ideaworks3d/marmalade/event/ActivityResultListenerList;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public addSuspendResumeListener(Lcom/ideaworks3d/marmalade/SuspendResumeListener;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/event/ListenerManager;->m_SuspendResumeListeners:Lcom/ideaworks3d/marmalade/event/SuspendResumeListenerList;

    invoke-virtual {v0, p1}, Lcom/ideaworks3d/marmalade/event/SuspendResumeListenerList;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public notifyActivityResultListeners(Lcom/ideaworks3d/marmalade/event/ActivityResultEvent;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/event/ListenerManager;->m_ActivityResultListeners:Lcom/ideaworks3d/marmalade/event/ActivityResultListenerList;

    invoke-virtual {v0, p1}, Lcom/ideaworks3d/marmalade/event/ActivityResultListenerList;->notifyAll(Lcom/ideaworks3d/marmalade/event/ActivityResultEvent;)V

    .line 29
    return-void
.end method

.method public notifySuspendResumeListeners(Lcom/ideaworks3d/marmalade/SuspendResumeEvent;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/event/ListenerManager;->m_SuspendResumeListeners:Lcom/ideaworks3d/marmalade/event/SuspendResumeListenerList;

    invoke-virtual {v0, p1}, Lcom/ideaworks3d/marmalade/event/SuspendResumeListenerList;->notifyAll(Lcom/ideaworks3d/marmalade/SuspendResumeEvent;)V

    .line 41
    return-void
.end method

.method public popKeyListener()Landroid/view/View$OnKeyListener;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/event/ListenerManager;->m_KeyListeners:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnKeyListener;

    .line 50
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 51
    return-object v0
.end method

.method public pushKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/event/ListenerManager;->m_KeyListeners:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 46
    return-void
.end method

.method public removeActivityResultListener(Lcom/ideaworks3d/marmalade/event/ActivityResultListener;)Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/event/ListenerManager;->m_ActivityResultListeners:Lcom/ideaworks3d/marmalade/event/ActivityResultListenerList;

    invoke-virtual {v0, p1}, Lcom/ideaworks3d/marmalade/event/ActivityResultListenerList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeSuspendResumeListener(Lcom/ideaworks3d/marmalade/SuspendResumeListener;)Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/event/ListenerManager;->m_SuspendResumeListeners:Lcom/ideaworks3d/marmalade/event/SuspendResumeListenerList;

    invoke-virtual {v0, p1}, Lcom/ideaworks3d/marmalade/event/SuspendResumeListenerList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
