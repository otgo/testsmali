.class public abstract Lcom/jirbo/adcolony/AdColonyAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1

.field static final c:I = 0x2

.field static final d:I = 0x3

.field static final e:I = 0x4


# instance fields
.field A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field B:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field f:I

.field g:I

.field h:Ljava/lang/String;

.field i:Lcom/jirbo/adcolony/n$ad;

.field j:Lcom/jirbo/adcolony/n$a;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:D

.field q:D

.field r:I

.field s:Z

.field t:Z

.field u:Z

.field v:Z

.field w:Z

.field x:Lcom/jirbo/adcolony/AdColonyNativeAdView;

.field y:Lcom/jirbo/adcolony/AdColonyAdListener;

.field z:Lcom/jirbo/adcolony/AdColonyIAPEngagement;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->f:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->k:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->l:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->m:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->n:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->o:Ljava/lang/String;

    .line 32
    iput-wide v2, p0, Lcom/jirbo/adcolony/AdColonyAd;->p:D

    .line 33
    iput-wide v2, p0, Lcom/jirbo/adcolony/AdColonyAd;->q:D

    .line 47
    sget-object v0, Lcom/jirbo/adcolony/AdColonyIAPEngagement;->NONE:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->z:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method abstract a(Z)Z
.end method

.method abstract b()Z
.end method

.method b(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->f:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 168
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/AdColonyAd;->a(Z)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    move v0, v2

    goto :goto_0

    .line 105
    :cond_2
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/d;->g(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    .line 106
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ad;->l()Lcom/jirbo/adcolony/n$a;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    .line 107
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ad;->k()Lcom/jirbo/adcolony/n$a;

    move-result-object v0

    goto :goto_1

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "replay"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "card_shown"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "html5_interaction"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "cancel"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "download"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "skip"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "info"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "custom_event"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "midpoint"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "card_dissolved"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "start"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "third_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "complete"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "continue"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "in_video_engagement"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->o:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "reward_v4vc"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "v4iap"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->q:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "first_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->r:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "video_expanded"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "sound_mute"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "sound_unmute"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->u:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "video_paused"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->v:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "video_resumed"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->w:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "native_start"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->x:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "native_first_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->y:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "native_midpoint"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->z:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "native_third_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->A:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "native_complete"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->B:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    const-string v2, "native_overlay_click"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->x:Lcom/jirbo/adcolony/n$b;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$b;->C:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "replay"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "card_shown"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "html5_interaction"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "cancel"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "download"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "skip"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "midpoint"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "card_dissolved"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "start"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "third_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "complete"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "continue"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "in_video_engagement"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "reward_v4vc"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "v4iap"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "first_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "video_expanded"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "sound_mute"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "sound_unmute"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "video_paused"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "video_resumed"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "native_start"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "native_first_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "native_midpoint"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "native_third_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "native_complete"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    const-string v2, "native_overlay_click"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->u:Lcom/jirbo/adcolony/n$z;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$z;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 168
    goto/16 :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyAd;->b(Z)Z

    move-result v0

    return v0
.end method

.method public canceled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 58
    iget v1, p0, Lcom/jirbo/adcolony/AdColonyAd;->f:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAvailableViews()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyAd;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyAd;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ad;->f()I

    move-result v0

    goto :goto_0
.end method

.method public getZoneID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 174
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public iapEnabled()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->v:Z

    return v0
.end method

.method public iapEngagementType()Lcom/jirbo/adcolony/AdColonyIAPEngagement;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->z:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    return-object v0
.end method

.method public iapProductID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->n:Ljava/lang/String;

    return-object v0
.end method

.method abstract isReady()Z
.end method

.method public noFill()Z
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notShown()Z
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shown()Z
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public skipped()Z
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
