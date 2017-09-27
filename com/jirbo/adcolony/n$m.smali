.class Lcom/jirbo/adcolony/n$m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Lcom/jirbo/adcolony/n$l;

.field i:Lcom/jirbo/adcolony/n$g;

.field j:Lcom/jirbo/adcolony/n$g;

.field k:Lcom/jirbo/adcolony/n$g;

.field l:Lcom/jirbo/adcolony/n$g;

.field m:Lcom/jirbo/adcolony/n$g;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1257
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return v0

    .line 1258
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1259
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$m;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1261
    iget-object v1, p0, Lcom/jirbo/adcolony/n$m;->h:Lcom/jirbo/adcolony/n$l;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1262
    iget-object v1, p0, Lcom/jirbo/adcolony/n$m;->i:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1263
    iget-object v1, p0, Lcom/jirbo/adcolony/n$m;->j:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1264
    iget-object v1, p0, Lcom/jirbo/adcolony/n$m;->k:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1265
    iget-object v1, p0, Lcom/jirbo/adcolony/n$m;->l:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1266
    iget-object v1, p0, Lcom/jirbo/adcolony/n$m;->m:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1268
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/ADCData$g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1273
    if-nez p1, :cond_1

    .line 1301
    :cond_0
    :goto_0
    return v0

    .line 1275
    :cond_1
    const-string v1, "tiny_glow_image"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$m;->a:Ljava/lang/String;

    .line 1276
    const-string v1, "tiny_glow_image_last_modified;"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$m;->b:Ljava/lang/String;

    .line 1277
    const-string v1, "background_bar_image"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$m;->c:Ljava/lang/String;

    .line 1278
    const-string v1, "background_bar_image_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$m;->d:Ljava/lang/String;

    .line 1279
    const-string v1, "background_tile_image"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$m;->e:Ljava/lang/String;

    .line 1280
    const-string v1, "background_tile_image_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$m;->f:Ljava/lang/String;

    .line 1281
    const-string v1, "background_color"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$m;->g:Ljava/lang/String;

    .line 1284
    new-instance v1, Lcom/jirbo/adcolony/n$l;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$l;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$m;->h:Lcom/jirbo/adcolony/n$l;

    .line 1285
    iget-object v1, p0, Lcom/jirbo/adcolony/n$m;->h:Lcom/jirbo/adcolony/n$l;

    const-string v2, "logo"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$l;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1288
    new-instance v1, Lcom/jirbo/adcolony/n$l;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$l;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$m;->h:Lcom/jirbo/adcolony/n$l;

    .line 1289
    iget-object v1, p0, Lcom/jirbo/adcolony/n$m;->h:Lcom/jirbo/adcolony/n$l;

    const-string v2, "logo"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$l;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1290
    new-instance v1, Lcom/jirbo/adcolony/n$g;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$g;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$m;->i:Lcom/jirbo/adcolony/n$g;

    .line 1291
    iget-object v1, p0, Lcom/jirbo/adcolony/n$m;->i:Lcom/jirbo/adcolony/n$g;

    const-string v2, "stop"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$g;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1292
    new-instance v1, Lcom/jirbo/adcolony/n$g;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$g;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$m;->j:Lcom/jirbo/adcolony/n$g;

    .line 1293
    iget-object v1, p0, Lcom/jirbo/adcolony/n$m;->j:Lcom/jirbo/adcolony/n$g;

    const-string v2, "back"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$g;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1294
    new-instance v1, Lcom/jirbo/adcolony/n$g;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$g;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$m;->k:Lcom/jirbo/adcolony/n$g;

    .line 1295
    iget-object v1, p0, Lcom/jirbo/adcolony/n$m;->k:Lcom/jirbo/adcolony/n$g;

    const-string v2, "close"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$g;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1296
    new-instance v1, Lcom/jirbo/adcolony/n$g;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$g;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$m;->l:Lcom/jirbo/adcolony/n$g;

    .line 1297
    iget-object v1, p0, Lcom/jirbo/adcolony/n$m;->l:Lcom/jirbo/adcolony/n$g;

    const-string v2, "forward"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$g;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1298
    new-instance v1, Lcom/jirbo/adcolony/n$g;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$g;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$m;->m:Lcom/jirbo/adcolony/n$g;

    .line 1299
    iget-object v1, p0, Lcom/jirbo/adcolony/n$m;->m:Lcom/jirbo/adcolony/n$g;

    const-string v2, "reload"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$g;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1301
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1306
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v1, p0, Lcom/jirbo/adcolony/n$m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v1, p0, Lcom/jirbo/adcolony/n$m;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v1, p0, Lcom/jirbo/adcolony/n$m;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$m;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    iget-object v0, p0, Lcom/jirbo/adcolony/n$m;->h:Lcom/jirbo/adcolony/n$l;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$l;->b()V

    .line 1311
    iget-object v0, p0, Lcom/jirbo/adcolony/n$m;->i:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$g;->b()V

    .line 1312
    iget-object v0, p0, Lcom/jirbo/adcolony/n$m;->j:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$g;->b()V

    .line 1313
    iget-object v0, p0, Lcom/jirbo/adcolony/n$m;->k:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$g;->b()V

    .line 1314
    iget-object v0, p0, Lcom/jirbo/adcolony/n$m;->l:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$g;->b()V

    .line 1315
    iget-object v0, p0, Lcom/jirbo/adcolony/n$m;->m:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$g;->b()V

    .line 1316
    return-void
.end method
