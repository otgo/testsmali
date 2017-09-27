.class Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;
.super Ljava/lang/Object;
.source "LoaderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ideaworks3d/marmalade/LoaderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MulticastLockFacade"
.end annotation


# instance fields
.field private m_multiCastLockReal:Ljava/lang/Object;

.field final synthetic this$0:Lcom/ideaworks3d/marmalade/LoaderThread;


# direct methods
.method public constructor <init>(Lcom/ideaworks3d/marmalade/LoaderThread;Landroid/net/wifi/WifiManager;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1548
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->this$0:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->m_multiCastLockReal:Ljava/lang/Object;

    .line 1551
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "createMulticastLock"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1553
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Marmalade"

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->m_multiCastLockReal:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1560
    return-void

    .line 1555
    :catch_0
    move-exception v0

    .line 1558
    throw v0
.end method


# virtual methods
.method public acquire()V
    .locals 3

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->m_multiCastLockReal:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1610
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->m_multiCastLockReal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "acquire"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1612
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->m_multiCastLockReal:Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1623
    :cond_0
    :goto_0
    return-void

    .line 1614
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isHeld()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1563
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->m_multiCastLockReal:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1567
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->m_multiCastLockReal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isHeld"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1569
    iget-object v3, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->m_multiCastLockReal:Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1570
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1581
    :goto_0
    return v0

    .line 1572
    :catch_0
    move-exception v0

    move v0, v1

    .line 1575
    goto :goto_0

    :cond_0
    move v0, v1

    .line 1581
    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->m_multiCastLockReal:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1590
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->m_multiCastLockReal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "release"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1592
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->m_multiCastLockReal:Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1603
    :cond_0
    :goto_0
    return-void

    .line 1594
    :catch_0
    move-exception v0

    goto :goto_0
.end method
