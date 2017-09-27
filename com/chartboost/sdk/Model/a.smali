.class public final Lcom/chartboost/sdk/Model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Model/a$1;,
        Lcom/chartboost/sdk/Model/a$a;,
        Lcom/chartboost/sdk/Model/a$d;,
        Lcom/chartboost/sdk/Model/a$c;,
        Lcom/chartboost/sdk/Model/a$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Date;

.field public b:Lcom/chartboost/sdk/Model/a$b;

.field public c:Lcom/chartboost/sdk/Model/a$c;

.field public d:Ljava/lang/String;

.field public e:Lcom/chartboost/sdk/Model/a$d;

.field public f:Z

.field public g:Z

.field public h:Lcom/chartboost/sdk/impl/bp;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Lcom/chartboost/sdk/impl/az;

.field public o:Z

.field public p:Z

.field public q:Z

.field private r:Lcom/chartboost/sdk/Libraries/e$a;

.field private s:Z

.field private t:Ljava/lang/Boolean;

.field private u:Lcom/chartboost/sdk/f;

.field private v:Lcom/chartboost/sdk/Model/a$a;

.field private w:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/a$c;ZLjava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;

    .line 94
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->j:Z

    .line 99
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->k:Z

    .line 101
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->l:Z

    .line 103
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->m:Z

    .line 109
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->p:Z

    .line 111
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->q:Z

    .line 116
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 117
    iput-boolean p2, p0, Lcom/chartboost/sdk/Model/a;->f:Z

    .line 118
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->g:Z

    .line 119
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->o:Z

    .line 120
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->p:Z

    .line 121
    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    .line 122
    iput-boolean p4, p0, Lcom/chartboost/sdk/Model/a;->i:Z

    .line 123
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    .line 124
    sget-object v0, Lcom/chartboost/sdk/Model/a$d;->d:Lcom/chartboost/sdk/Model/a$d;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    .line 125
    iput-object p3, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    .line 126
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    .line 127
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 128
    const-string v0, "Default"

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public A()Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0
.end method

.method public B()Lcom/chartboost/sdk/f;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    return-object v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->p:Z

    return v0
.end method

.method public a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/Model/a$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    if-nez p1, :cond_0

    .line 133
    invoke-static {}, Lcom/chartboost/sdk/Libraries/e$a;->a()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p1

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    .line 135
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->a:Ljava/util/Date;

    .line 136
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 137
    iput-object p2, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    .line 139
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "native"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 140
    if-eqz v0, :cond_2

    .line 141
    sget-object v0, Lcom/chartboost/sdk/Model/a$1;->a:[I

    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Libraries/e$a;)Z

    .line 173
    return-void

    .line 143
    :pswitch_1
    const-string v0, "media-type"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    sget-object v0, Lcom/chartboost/sdk/Model/a$d;->b:Lcom/chartboost/sdk/Model/a$d;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    .line 146
    new-instance v0, Lcom/chartboost/sdk/impl/ai;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ai;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    .line 147
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    goto :goto_0

    .line 150
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Model/a$d;->a:Lcom/chartboost/sdk/Model/a$d;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    .line 151
    new-instance v0, Lcom/chartboost/sdk/impl/ah;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ah;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    goto :goto_0

    .line 155
    :pswitch_2
    sget-object v0, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    .line 156
    new-instance v0, Lcom/chartboost/sdk/impl/ai;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ai;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    .line 157
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    goto :goto_0

    .line 160
    :pswitch_3
    new-instance v0, Lcom/chartboost/sdk/impl/aw;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/aw;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    .line 161
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    goto :goto_0

    .line 169
    :cond_2
    new-instance v0, Lcom/chartboost/sdk/impl/br;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/br;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0, p1}, Lcom/chartboost/sdk/Model/a$a;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 247
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->w:Ljava/lang/Runnable;

    .line 364
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    return v0
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v3, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 228
    :goto_0
    return v0

    .line 208
    :cond_1
    if-eqz p1, :cond_3

    .line 209
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "deep-link"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 212
    :try_start_0
    invoke-static {v0}, Lcom/chartboost/sdk/impl/bb;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 214
    :try_start_1
    new-instance v3, Ljava/lang/Boolean;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v3, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v0

    .line 223
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->o:Z

    if-eqz v0, :cond_5

    move v0, v1

    .line 224
    goto :goto_0

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "link"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 216
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 219
    :catch_0
    move-exception v0

    goto :goto_2

    .line 225
    :cond_5
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->o:Z

    .line 226
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->p:Z

    .line 227
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0, p1, p2}, Lcom/chartboost/sdk/Model/a$a;->a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    move v0, v2

    .line 228
    goto :goto_0

    .line 219
    :catch_1
    move-exception v3

    move-object p1, v0

    goto :goto_2
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 184
    iget-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 186
    :cond_0
    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->p:Z

    .line 193
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$a;->b(Lcom/chartboost/sdk/Model/a;)V

    .line 195
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$a;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 201
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$a;->c(Lcom/chartboost/sdk/Model/a;)V

    .line 253
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$a;->d(Lcom/chartboost/sdk/Model/a;)V

    .line 260
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->b()Z

    .line 268
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    .line 271
    :cond_0
    const-string v0, "CBImpression"

    const-string v1, "reinitializing -- no view protocol exists!!"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    :cond_1
    const-string v0, "CBImpression"

    const-string v1, "reinitializing -- view not yet created"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->k()V

    .line 281
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->g:Z

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->d()V

    .line 286
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    .line 287
    const-string v0, "CBImpression"

    const-string v1, "Destroying the view and view data"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public k()V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bp;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bp;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bp;->d()V

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/f$a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bp;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v1}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bp;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bp;

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->f()V

    .line 305
    :cond_2
    const-string v0, "CBImpression"

    const-string v1, "Destroying the view"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    const-string v1, "CBImpression"

    const-string v2, "Exception raised while cleaning up views"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public l()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Lcom/chartboost/sdk/f$a;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/f$a;->setVisibility(I)V

    .line 327
    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/f$a;->setVisibility(I)V

    .line 332
    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/f$a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 339
    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->o()V

    goto :goto_0
.end method

.method public q()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/f$a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 353
    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->n()V

    goto :goto_0
.end method

.method public r()V
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->k:Z

    .line 368
    return-void
.end method

.method public s()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 371
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->w:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->w:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->w:Ljava/lang/Runnable;

    .line 375
    :cond_0
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->k:Z

    .line 376
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->j:Z

    .line 377
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "ad_id"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/chartboost/sdk/d;
    .locals 2

    .prologue
    .line 384
    sget-object v0, Lcom/chartboost/sdk/Model/a$1;->a:[I

    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 391
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->f()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    :goto_0
    return-object v0

    .line 386
    :pswitch_0
    invoke-static {}, Lcom/chartboost/sdk/impl/av;->f()Lcom/chartboost/sdk/impl/av;

    move-result-object v0

    goto :goto_0

    .line 388
    :pswitch_1
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->h()Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    goto :goto_0

    .line 384
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public v()V
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->u()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/d;->j(Lcom/chartboost/sdk/Model/a;)V

    .line 401
    return-void
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->j()Z

    move-result v0

    .line 407
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()V
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->o:Z

    .line 412
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->k()V

    .line 414
    :cond_0
    return-void
.end method

.method public y()V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->o:Z

    .line 418
    return-void
.end method

.method public z()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->l()V

    .line 423
    :cond_0
    return-void
.end method
