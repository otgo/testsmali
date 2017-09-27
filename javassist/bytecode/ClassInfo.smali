.class Ljavassist/bytecode/ClassInfo;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# static fields
.field static final tag:I = 0x7


# instance fields
.field name:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "className"    # I
    .param p2, "index"    # I

    .prologue
    .line 1321
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1322
    iput p1, p0, Ljavassist/bytecode/ClassInfo;->name:I

    .line 1323
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/DataInputStream;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1326
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1327
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassInfo;->name:I

    .line 1328
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)I
    .locals 3
    .param p1, "src"    # Ljavassist/bytecode/ConstPool;
    .param p2, "dest"    # Ljavassist/bytecode/ConstPool;
    .param p3, "map"    # Ljava/util/Map;

    .prologue
    .line 1389
    iget v2, p0, Ljavassist/bytecode/ClassInfo;->name:I

    invoke-virtual {p1, v2}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 1390
    .local v0, "classname":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 1391
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1392
    .local v1, "newname":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1393
    move-object v0, v1

    .line 1396
    .end local v1    # "newname":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v0}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1333
    instance-of v0, p1, Ljavassist/bytecode/ClassInfo;

    if-eqz v0, :cond_0

    check-cast p1, Ljavassist/bytecode/ClassInfo;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v0, p1, Ljavassist/bytecode/ClassInfo;->name:I

    iget v1, p0, Ljavassist/bytecode/ClassInfo;->name:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClassName(Ljavassist/bytecode/ConstPool;)Ljava/lang/String;
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .prologue
    .line 1339
    iget v0, p0, Ljavassist/bytecode/ClassInfo;->name:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 1336
    const/4 v0, 0x7

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1330
    iget v0, p0, Ljavassist/bytecode/ClassInfo;->name:I

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 1405
    const-string v0, "Class #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1406
    iget v0, p0, Ljavassist/bytecode/ClassInfo;->name:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1407
    return-void
.end method

.method public renameClass(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "cache"    # Ljava/util/HashMap;

    .prologue
    .line 1343
    iget v3, p0, Ljavassist/bytecode/ClassInfo;->name:I

    invoke-virtual {p1, v3}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 1344
    .local v0, "nameStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1345
    .local v1, "newNameStr":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1346
    move-object v1, p3

    .line 1353
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1354
    if-nez p4, :cond_3

    .line 1355
    invoke-virtual {p1, v1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Ljavassist/bytecode/ClassInfo;->name:I

    .line 1361
    :cond_1
    :goto_1
    return-void

    .line 1347
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_0

    .line 1348
    invoke-static {v0, p2, p3}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1349
    .local v2, "s":Ljava/lang/String;
    if-eq v0, v2, :cond_0

    .line 1350
    move-object v1, v2

    goto :goto_0

    .line 1357
    .end local v2    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual {p4, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    invoke-virtual {p1, v1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Ljavassist/bytecode/ClassInfo;->name:I

    .line 1359
    invoke-virtual {p4, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public renameClass(Ljavassist/bytecode/ConstPool;Ljava/util/Map;Ljava/util/HashMap;)V
    .locals 5
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "map"    # Ljava/util/Map;
    .param p3, "cache"    # Ljava/util/HashMap;

    .prologue
    .line 1364
    iget v3, p0, Ljavassist/bytecode/ClassInfo;->name:I

    invoke-virtual {p1, v3}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    .line 1365
    .local v1, "oldName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1366
    .local v0, "newName":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_2

    .line 1367
    invoke-static {v1, p2}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 1368
    .local v2, "s":Ljava/lang/String;
    if-eq v1, v2, :cond_0

    .line 1369
    move-object v0, v2

    .line 1377
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1378
    if-nez p3, :cond_3

    .line 1379
    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Ljavassist/bytecode/ClassInfo;->name:I

    .line 1386
    :cond_1
    :goto_1
    return-void

    .line 1372
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1373
    .restart local v2    # "s":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1374
    move-object v0, v2

    goto :goto_0

    .line 1381
    :cond_3
    invoke-virtual {p3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Ljavassist/bytecode/ClassInfo;->name:I

    .line 1383
    invoke-virtual {p3, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1400
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1401
    iget v0, p0, Ljavassist/bytecode/ClassInfo;->name:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1402
    return-void
.end method
