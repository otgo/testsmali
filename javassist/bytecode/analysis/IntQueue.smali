.class Ljavassist/bytecode/analysis/IntQueue;
.super Ljava/lang/Object;
.source "IntQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/analysis/IntQueue$1;,
        Ljavassist/bytecode/analysis/IntQueue$Entry;
    }
.end annotation


# instance fields
.field private head:Ljavassist/bytecode/analysis/IntQueue$Entry;

.field private tail:Ljavassist/bytecode/analysis/IntQueue$Entry;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method add(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 33
    new-instance v0, Ljavassist/bytecode/analysis/IntQueue$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/analysis/IntQueue$Entry;-><init>(ILjavassist/bytecode/analysis/IntQueue$1;)V

    .line 34
    .local v0, "entry":Ljavassist/bytecode/analysis/IntQueue$Entry;
    iget-object v1, p0, Ljavassist/bytecode/analysis/IntQueue;->tail:Ljavassist/bytecode/analysis/IntQueue$Entry;

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Ljavassist/bytecode/analysis/IntQueue;->tail:Ljavassist/bytecode/analysis/IntQueue$Entry;

    invoke-static {v1, v0}, Ljavassist/bytecode/analysis/IntQueue$Entry;->access$102(Ljavassist/bytecode/analysis/IntQueue$Entry;Ljavassist/bytecode/analysis/IntQueue$Entry;)Ljavassist/bytecode/analysis/IntQueue$Entry;

    .line 36
    :cond_0
    iput-object v0, p0, Ljavassist/bytecode/analysis/IntQueue;->tail:Ljavassist/bytecode/analysis/IntQueue$Entry;

    .line 38
    iget-object v1, p0, Ljavassist/bytecode/analysis/IntQueue;->head:Ljavassist/bytecode/analysis/IntQueue$Entry;

    if-nez v1, :cond_1

    .line 39
    iput-object v0, p0, Ljavassist/bytecode/analysis/IntQueue;->head:Ljavassist/bytecode/analysis/IntQueue$Entry;

    .line 40
    :cond_1
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ljavassist/bytecode/analysis/IntQueue;->head:Ljavassist/bytecode/analysis/IntQueue$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method take()I
    .locals 2

    .prologue
    .line 47
    iget-object v1, p0, Ljavassist/bytecode/analysis/IntQueue;->head:Ljavassist/bytecode/analysis/IntQueue$Entry;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 50
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/analysis/IntQueue;->head:Ljavassist/bytecode/analysis/IntQueue$Entry;

    invoke-static {v1}, Ljavassist/bytecode/analysis/IntQueue$Entry;->access$200(Ljavassist/bytecode/analysis/IntQueue$Entry;)I

    move-result v0

    .line 51
    .local v0, "value":I
    iget-object v1, p0, Ljavassist/bytecode/analysis/IntQueue;->head:Ljavassist/bytecode/analysis/IntQueue$Entry;

    invoke-static {v1}, Ljavassist/bytecode/analysis/IntQueue$Entry;->access$100(Ljavassist/bytecode/analysis/IntQueue$Entry;)Ljavassist/bytecode/analysis/IntQueue$Entry;

    move-result-object v1

    iput-object v1, p0, Ljavassist/bytecode/analysis/IntQueue;->head:Ljavassist/bytecode/analysis/IntQueue$Entry;

    .line 52
    iget-object v1, p0, Ljavassist/bytecode/analysis/IntQueue;->head:Ljavassist/bytecode/analysis/IntQueue$Entry;

    if-nez v1, :cond_1

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Ljavassist/bytecode/analysis/IntQueue;->tail:Ljavassist/bytecode/analysis/IntQueue$Entry;

    .line 55
    :cond_1
    return v0
.end method
