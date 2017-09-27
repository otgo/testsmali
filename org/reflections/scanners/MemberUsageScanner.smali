.class public Lorg/reflections/scanners/MemberUsageScanner;
.super Lorg/reflections/scanners/AbstractScanner;
.source "MemberUsageScanner.java"


# instance fields
.field private classPool:Ljavassist/ClassPool;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/reflections/scanners/AbstractScanner;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/reflections/scanners/MemberUsageScanner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/reflections/scanners/MemberUsageScanner;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lorg/reflections/scanners/MemberUsageScanner;->put(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private getClassPool()Ljavassist/ClassPool;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v3, p0, Lorg/reflections/scanners/MemberUsageScanner;->classPool:Ljavassist/ClassPool;

    if-nez v3, :cond_2

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    new-instance v3, Ljavassist/ClassPool;

    invoke-direct {v3}, Ljavassist/ClassPool;-><init>()V

    iput-object v3, p0, Lorg/reflections/scanners/MemberUsageScanner;->classPool:Ljavassist/ClassPool;

    .line 92
    invoke-virtual {p0}, Lorg/reflections/scanners/MemberUsageScanner;->getConfiguration()Lorg/reflections/Configuration;

    move-result-object v3

    invoke-interface {v3}, Lorg/reflections/Configuration;->getClassLoaders()[Ljava/lang/ClassLoader;

    move-result-object v1

    .line 93
    .local v1, "classLoaders":[Ljava/lang/ClassLoader;
    if-nez v1, :cond_0

    .line 94
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/ClassLoader;

    invoke-static {v3}, Lorg/reflections/util/ClasspathHelper;->classLoaders([Ljava/lang/ClassLoader;)[Ljava/lang/ClassLoader;

    move-result-object v1

    .line 96
    :cond_0
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 97
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    iget-object v4, p0, Lorg/reflections/scanners/MemberUsageScanner;->classPool:Ljavassist/ClassPool;

    new-instance v5, Ljavassist/LoaderClassPath;

    invoke-direct {v5, v0}, Ljavassist/LoaderClassPath;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v4, v5}, Ljavassist/ClassPool;->appendClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v1    # "classLoaders":[Ljava/lang/ClassLoader;
    :cond_2
    iget-object v2, p0, Lorg/reflections/scanners/MemberUsageScanner;->classPool:Ljavassist/ClassPool;

    return-object v2

    .line 99
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private put(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lorg/reflections/scanners/MemberUsageScanner;->acceptResult(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lorg/reflections/scanners/MemberUsageScanner;->getStore()Lcom/google/common/collect/Multimap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method parameterNames(Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "info"    # Ljavassist/bytecode/MethodInfo;

    .prologue
    .line 85
    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {p0}, Lorg/reflections/scanners/MemberUsageScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/reflections/adapters/MetadataAdapter;->getParameterNames(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scan(Ljava/lang/Object;)V
    .locals 7
    .param p1, "cls"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 19
    :try_start_0
    invoke-direct {p0}, Lorg/reflections/scanners/MemberUsageScanner;->getClassPool()Ljavassist/ClassPool;

    move-result-object v4

    invoke-virtual {p0}, Lorg/reflections/scanners/MemberUsageScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v5

    invoke-interface {v5, p1}, Lorg/reflections/adapters/MetadataAdapter;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    .line 20
    .local v0, "ctClass":Ljavassist/CtClass;
    invoke-virtual {v0}, Ljavassist/CtClass;->getDeclaredConstructors()[Ljavassist/CtConstructor;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v5, v4

    .line 21
    .local v2, "member":Ljavassist/CtBehavior;
    invoke-virtual {p0, v2}, Lorg/reflections/scanners/MemberUsageScanner;->scanMember(Ljavassist/CtBehavior;)V

    .line 20
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 23
    .end local v2    # "member":Ljavassist/CtBehavior;
    :cond_0
    invoke-virtual {v0}, Ljavassist/CtClass;->getDeclaredMethods()[Ljavassist/CtMethod;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    .line 24
    .restart local v2    # "member":Ljavassist/CtBehavior;
    invoke-virtual {p0, v2}, Lorg/reflections/scanners/MemberUsageScanner;->scanMember(Ljavassist/CtBehavior;)V

    .line 23
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 26
    .end local v2    # "member":Ljavassist/CtBehavior;
    :cond_1
    invoke-virtual {v0}, Ljavassist/CtClass;->detach()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-void

    .line 27
    .end local v0    # "ctClass":Ljavassist/CtClass;
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/reflections/ReflectionsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not scan method usage for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/reflections/scanners/MemberUsageScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v5

    invoke-interface {v5, p1}, Lorg/reflections/adapters/MetadataAdapter;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method scanMember(Ljavassist/CtBehavior;)V
    .locals 3
    .param p1, "member"    # Ljavassist/CtBehavior;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljavassist/CtBehavior;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljavassist/CtBehavior;->getMethodInfo()Ljavassist/bytecode/MethodInfo;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Ljavassist/CtBehavior;->getMethodInfo()Ljavassist/bytecode/MethodInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/reflections/scanners/MemberUsageScanner;->parameterNames(Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lorg/reflections/scanners/MemberUsageScanner$1;

    invoke-direct {v1, p0, v0}, Lorg/reflections/scanners/MemberUsageScanner$1;-><init>(Lorg/reflections/scanners/MemberUsageScanner;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljavassist/CtBehavior;->instrument(Ljavassist/expr/ExprEditor;)V

    .line 76
    return-void
.end method
