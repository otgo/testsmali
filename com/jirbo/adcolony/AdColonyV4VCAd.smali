.class public final Lcom/jirbo/adcolony/AdColonyV4VCAd;
.super Lcom/jirbo/adcolony/AdColonyAd;
.source "SourceFile"


# instance fields
.field C:Z

.field D:Z

.field E:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/jirbo/adcolony/AdColonyAd;-><init>()V

    .line 23
    iput-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->C:Z

    .line 24
    iput-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->D:Z

    .line 30
    sput-boolean v1, Lcom/jirbo/adcolony/a;->D:Z

    .line 31
    invoke-static {}, Lcom/jirbo/adcolony/a;->e()V

    .line 32
    const-string v0, "v4vc"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->k:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->E:Z

    .line 34
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->l:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/jirbo/adcolony/aa;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->m:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/jirbo/adcolony/AdColonyAd;-><init>()V

    .line 23
    iput-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->C:Z

    .line 24
    iput-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->D:Z

    .line 40
    invoke-static {}, Lcom/jirbo/adcolony/a;->e()V

    .line 41
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->h:Ljava/lang/String;

    .line 42
    const-string v0, "v4vc"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->k:Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->E:Z

    .line 44
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->l:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/jirbo/adcolony/aa;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->m:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 205
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 207
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "Result"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->a(Ljava/lang/String;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->y:Lcom/jirbo/adcolony/AdColonyAdListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->w:Z

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->y:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/AdColonyAdListener;->onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 215
    :cond_1
    sget-boolean v0, Lcom/jirbo/adcolony/a;->D:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/jirbo/adcolony/AdColonyBrowser;->B:Z

    if-nez v0, :cond_3

    .line 217
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/jirbo/adcolony/a;->an:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/jirbo/adcolony/a;->an:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 218
    :cond_2
    sget-object v0, Lcom/jirbo/adcolony/a;->an:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    :cond_3
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/a;->U:Lcom/jirbo/adcolony/ADCVideo;

    .line 222
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->w:Z

    .line 224
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->D:Z

    if-nez v0, :cond_4

    sput-boolean v2, Lcom/jirbo/adcolony/a;->E:Z

    .line 225
    :cond_4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 226
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getRewardName()Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v1, ""

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getRewardAmount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    const-string v1, "Confirmation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/jirbo/adcolony/ab;

    invoke-direct {v1, v0, p0}, Lcom/jirbo/adcolony/ab;-><init>(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyV4VCAd;)V

    sput-object v1, Lcom/jirbo/adcolony/a;->S:Lcom/jirbo/adcolony/h;

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    new-instance v1, Lcom/jirbo/adcolony/ac;

    invoke-direct {v1, v0, p0}, Lcom/jirbo/adcolony/ac;-><init>(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyV4VCAd;)V

    sput-object v1, Lcom/jirbo/adcolony/a;->S:Lcom/jirbo/adcolony/h;

    goto :goto_0
.end method

.method a(Z)Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method c(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 176
    if-eqz p1, :cond_3

    .line 178
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/d;->b(Lcom/jirbo/adcolony/AdColonyV4VCAd;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jirbo/adcolony/a;->o:Z

    .line 181
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->y:Lcom/jirbo/adcolony/AdColonyAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->y:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/AdColonyAdListener;->onAdColonyAdStarted(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 182
    :cond_0
    iput v2, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->f:I

    .line 196
    :goto_0
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->f:I

    if-eq v0, v2, :cond_1

    .line 198
    sput-boolean v1, Lcom/jirbo/adcolony/a;->E:Z

    .line 199
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->y:Lcom/jirbo/adcolony/AdColonyAdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->y:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/AdColonyAdListener;->onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 201
    :cond_1
    return-void

    .line 186
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->f:I

    goto :goto_0

    .line 191
    :cond_3
    iput v1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->f:I

    goto :goto_0
.end method

.method public getRemainingViewsUntilReward()I
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->n:Lcom/jirbo/adcolony/n$af;

    iget v0, v0, Lcom/jirbo/adcolony/n$af;->f:I

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget v1, v1, Lcom/jirbo/adcolony/n$ad;->s:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getRewardAmount()I
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->n:Lcom/jirbo/adcolony/n$af;

    iget v0, v0, Lcom/jirbo/adcolony/n$af;->c:I

    goto :goto_0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 99
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->n:Lcom/jirbo/adcolony/n$af;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$af;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public getViewsPerReward()I
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->n:Lcom/jirbo/adcolony/n$af;

    iget v0, v0, Lcom/jirbo/adcolony/n$af;->f:I

    goto :goto_0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/d;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->h:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/d;->f(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 125
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->E:Z

    if-eqz v0, :cond_1

    .line 127
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "Show attempt on out of date ad object. Please instantiate a new ad object for each ad attempt."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    sput v3, Lcom/jirbo/adcolony/a;->am:I

    .line 131
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_3

    .line 133
    sget v0, Lcom/jirbo/adcolony/a;->am:I

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->g:I

    .line 136
    new-instance v0, Lcom/jirbo/adcolony/AdColonyV4VCAd$1;

    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-direct {v0, p0, v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd$1;-><init>(Lcom/jirbo/adcolony/AdColonyV4VCAd;Lcom/jirbo/adcolony/d;)V

    .line 143
    const/4 v0, 0x2

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->f:I

    .line 144
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->y:Lcom/jirbo/adcolony/AdColonyAdListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->y:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/AdColonyAdListener;->onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 145
    :cond_2
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->E:Z

    goto :goto_0

    .line 148
    :cond_3
    sget v0, Lcom/jirbo/adcolony/a;->am:I

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->g:I

    .line 149
    sget-boolean v0, Lcom/jirbo/adcolony/a;->E:Z

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Lcom/jirbo/adcolony/AdColonyV4VCAd$2;

    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-direct {v0, p0, v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd$2;-><init>(Lcom/jirbo/adcolony/AdColonyV4VCAd;Lcom/jirbo/adcolony/d;)V

    .line 159
    sput-boolean v3, Lcom/jirbo/adcolony/a;->E:Z

    .line 160
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->c()Z

    .line 162
    sput-object p0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    .line 163
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/d;->a(Lcom/jirbo/adcolony/AdColonyV4VCAd;)V

    .line 165
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->C:Z

    if-eqz v0, :cond_4

    const-string v0, "Confirmation"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_4
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->E:Z

    .line 169
    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->c(Z)V

    goto :goto_0
.end method

.method public withConfirmationDialog()Lcom/jirbo/adcolony/AdColonyV4VCAd;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withConfirmationDialog(Z)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v0

    return-object v0
.end method

.method public withConfirmationDialog(Z)Lcom/jirbo/adcolony/AdColonyV4VCAd;
    .locals 0
    .param p1, "setting"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->C:Z

    .line 57
    return-object p0
.end method

.method public withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyV4VCAd;
    .locals 0
    .param p1, "listener"    # Lcom/jirbo/adcolony/AdColonyAdListener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->y:Lcom/jirbo/adcolony/AdColonyAdListener;

    .line 51
    return-object p0
.end method

.method public withResultsDialog()Lcom/jirbo/adcolony/AdColonyV4VCAd;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withResultsDialog(Z)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v0

    return-object v0
.end method

.method public withResultsDialog(Z)Lcom/jirbo/adcolony/AdColonyV4VCAd;
    .locals 1
    .param p1, "setting"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->D:Z

    .line 63
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->D:Z

    sput-boolean v0, Lcom/jirbo/adcolony/a;->D:Z

    .line 64
    return-object p0
.end method
