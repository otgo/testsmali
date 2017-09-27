.class public Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;
.super Ljava/lang/Object;
.source "BufferingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper$SPBufferingStateChangedListener;
    }
.end annotation


# static fields
.field public static final X_PERCENT_BUFFER:I = 0xf


# instance fields
.field private final a:Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper$SPBufferingStateChangedListener;

.field private b:J

.field private c:Z

.field private d:I

.field private e:J

.field private f:J

.field private g:I

.field private h:J

.field private i:J

.field private j:J

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper$SPBufferingStateChangedListener;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide v2, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->b:J

    .line 23
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->c:Z

    .line 28
    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->d:I

    .line 31
    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->g:I

    .line 32
    iput-wide v2, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->h:J

    .line 35
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->k:Z

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SPBufferingStateChangedListener is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->a:Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper$SPBufferingStateChangedListener;

    .line 43
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->e:J

    .line 44
    return-void
.end method

.method private a(ZJJ)V
    .locals 10

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->c:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-ne v0, p1, :cond_1

    .line 96
    const-string v1, "BufferingHelper"

    const-string v2, "changing to%s buffering"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    const-string v0, ""

    :goto_1
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 99
    if-eqz p1, :cond_4

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->e:J

    .line 103
    iget-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->h:J

    sub-long v0, p2, v0

    iput-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->i:J

    .line 105
    const-string v0, "BufferingHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mTotalPlayedTimeSinceBuffering = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->i:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    div-long/2addr v0, p4

    .line 107
    const-string v2, "BufferingHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "percentage = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v2, "BufferingHelper"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "buffering %d percent took %d ms "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v8, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->f:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 112
    const-wide/16 v2, 0xf

    iget-wide v4, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->f:J

    mul-long/2addr v2, v4

    div-long v0, v2, v0

    .line 113
    const-string v2, "BufferingHelper"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "Required buffering time for %d percent %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-wide/16 v2, 0x1f4

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->g:I

    .line 116
    const-string v0, "BufferingHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mBufferCounter - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->a:Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper$SPBufferingStateChangedListener;

    invoke-interface {v0, p1}, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper$SPBufferingStateChangedListener;->onBufferingStateChanged(Z)V

    .line 128
    iput-boolean p1, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->c:Z

    .line 130
    :cond_1
    return-void

    .line 95
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 96
    :cond_3
    const-string v0, " NOT"

    goto/16 :goto_1

    .line 120
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->f:J

    .line 122
    iput-wide p2, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->h:J

    .line 124
    const-wide/16 v0, 0x3e8

    sub-long v0, p2, v0

    iput-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->b:J

    goto :goto_2
.end method


# virtual methods
.method public isBuffering(JZZ)Z
    .locals 7

    .prologue
    const-wide/16 v4, 0x1ae

    const/4 v1, 0x0

    .line 57
    iget-wide v2, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->j:J

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 58
    iget-wide v4, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->j:J

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->a(ZJJ)V

    .line 59
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->c:Z

    .line 90
    :goto_0
    return v0

    .line 64
    :cond_0
    if-nez p3, :cond_3

    iget-wide v2, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->b:J

    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->k:Z

    if-nez v0, :cond_3

    .line 66
    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->d:I

    iget v2, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->g:I

    if-ne v0, v2, :cond_2

    .line 68
    if-nez p4, :cond_1

    .line 69
    iput v1, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->d:I

    .line 70
    iget-wide v4, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->j:J

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->a(ZJJ)V

    .line 75
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->c:Z

    goto :goto_0

    .line 73
    :cond_2
    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->d:I

    goto :goto_1

    .line 78
    :cond_3
    iput-boolean p4, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->k:Z

    .line 80
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->k:Z

    if-eqz v0, :cond_4

    .line 81
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->c:Z

    goto :goto_0

    .line 84
    :cond_4
    iget-wide v2, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->b:J

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_5

    cmp-long v0, p1, v4

    if-gez v0, :cond_6

    .line 85
    :cond_5
    iget-wide v4, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->j:J

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->a(ZJJ)V

    .line 89
    :goto_2
    iput-wide p1, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->b:J

    .line 90
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->c:Z

    goto :goto_0

    .line 87
    :cond_6
    const/4 v1, 0x1

    iget-wide v4, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->j:J

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->a(ZJJ)V

    goto :goto_2
.end method

.method public setVideoDuration(J)V
    .locals 1

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->j:J

    .line 48
    return-void
.end method

.method public startedPlaying()V
    .locals 4

    .prologue
    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/utils/BufferingHelper;->f:J

    .line 54
    return-void
.end method
