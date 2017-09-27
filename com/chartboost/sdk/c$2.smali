.class Lcom/chartboost/sdk/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/Model/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/c;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/c;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 136
    .line 137
    iget-object v1, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    .line 139
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v2, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    if-ne v1, v2, :cond_0

    .line 142
    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->b:Lcom/chartboost/sdk/Model/a$b;

    iput-object v1, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 143
    if-eqz v0, :cond_3

    .line 144
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->u()Lcom/chartboost/sdk/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 150
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v1, :cond_2

    .line 151
    :cond_1
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->u()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/d;->g(Lcom/chartboost/sdk/Model/a;)V

    .line 152
    :cond_2
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->u()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/d;->o(Lcom/chartboost/sdk/Model/a;)V

    .line 153
    return-void

    .line 139
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 146
    :cond_3
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->u()Lcom/chartboost/sdk/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/chartboost/sdk/d;->q(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->u()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 223
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->u()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 177
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->a()Z

    move-result v0

    .line 178
    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v1, :cond_0

    .line 180
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->b(Lcom/chartboost/sdk/Model/a;)V

    .line 186
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 187
    :goto_0
    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->A()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v1}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/impl/az;

    move-result-object v1

    .line 192
    const-string v2, "ad_id"

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 193
    const-string v2, "to"

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 194
    const-string v2, "cgn"

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 195
    const-string v2, "creative"

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 196
    const-string v0, "cgn"

    invoke-virtual {v1, v0, p3}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 197
    const-string v0, "creative"

    invoke-virtual {v1, v0, p3}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 198
    const-string v0, "type"

    invoke-virtual {v1, v0, p3}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 199
    const-string v0, "more_type"

    invoke-virtual {v1, v0, p3}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 200
    const-string v0, "location"

    iget-object v2, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    const-string v0, "retarget_reinstall"

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->f()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    :cond_1
    iput-object v1, p1, Lcom/chartboost/sdk/Model/a;->n:Lcom/chartboost/sdk/impl/az;

    .line 207
    iget-object v0, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1, p2, v5}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/c$b;)V

    .line 213
    :goto_1
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->u()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void

    :cond_2
    move v0, v2

    .line 186
    goto :goto_0

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/impl/bb$a;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bb$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$b;)V

    goto :goto_1
.end method

.method public b(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v1, :cond_0

    .line 161
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->b(Lcom/chartboost/sdk/Model/a;)V

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->u()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public c(Lcom/chartboost/sdk/Model/a;)V
    .locals 4

    .prologue
    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->l:Z

    .line 228
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->g()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-static {}, Lcom/chartboost/sdk/b;->g()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->A()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "reward"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/a;->didCompleteRewardedVideo(Ljava/lang/String;I)V

    .line 231
    :cond_0
    invoke-static {p1}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 232
    return-void
.end method

.method public d(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->m:Z

    .line 237
    return-void
.end method
