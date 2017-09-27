.class Lorg/reflections/scanners/MemberUsageScanner$1;
.super Ljavassist/expr/ExprEditor;
.source "MemberUsageScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/scanners/MemberUsageScanner;->scanMember(Ljavassist/CtBehavior;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/reflections/scanners/MemberUsageScanner;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/reflections/scanners/MemberUsageScanner;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/reflections/scanners/MemberUsageScanner;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/reflections/scanners/MemberUsageScanner$1;->this$0:Lorg/reflections/scanners/MemberUsageScanner;

    iput-object p2, p0, Lorg/reflections/scanners/MemberUsageScanner$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljavassist/expr/ExprEditor;-><init>()V

    return-void
.end method


# virtual methods
.method public edit(Ljavassist/expr/ConstructorCall;)V
    .locals 5
    .param p1, "c"    # Ljavassist/expr/ConstructorCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lorg/reflections/scanners/MemberUsageScanner$1;->this$0:Lorg/reflections/scanners/MemberUsageScanner;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljavassist/expr/ConstructorCall;->getConstructor()Ljavassist/CtConstructor;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtConstructor;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<init>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/reflections/scanners/MemberUsageScanner$1;->this$0:Lorg/reflections/scanners/MemberUsageScanner;

    .line 61
    invoke-virtual {p1}, Ljavassist/expr/ConstructorCall;->getConstructor()Ljavassist/CtConstructor;

    move-result-object v4

    invoke-virtual {v4}, Ljavassist/CtConstructor;->getMethodInfo()Ljavassist/bytecode/MethodInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/reflections/scanners/MemberUsageScanner;->parameterNames(Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/expr/ConstructorCall;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lorg/reflections/scanners/MemberUsageScanner$1;->val$key:Ljava/lang/String;

    .line 60
    invoke-static {v1, v2, v3, v4}, Lorg/reflections/scanners/MemberUsageScanner;->access$000(Lorg/reflections/scanners/MemberUsageScanner;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Lorg/reflections/ReflectionsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find member "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/expr/ConstructorCall;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/reflections/scanners/MemberUsageScanner$1;->val$key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public edit(Ljavassist/expr/FieldAccess;)V
    .locals 5
    .param p1, "f"    # Ljavassist/expr/FieldAccess;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lorg/reflections/scanners/MemberUsageScanner$1;->this$0:Lorg/reflections/scanners/MemberUsageScanner;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljavassist/expr/FieldAccess;->getField()Ljavassist/CtField;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/expr/FieldAccess;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/expr/FieldAccess;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lorg/reflections/scanners/MemberUsageScanner$1;->val$key:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lorg/reflections/scanners/MemberUsageScanner;->access$000(Lorg/reflections/scanners/MemberUsageScanner;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Lorg/reflections/ReflectionsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find member "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/expr/FieldAccess;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/reflections/scanners/MemberUsageScanner$1;->val$key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public edit(Ljavassist/expr/MethodCall;)V
    .locals 5
    .param p1, "m"    # Ljavassist/expr/MethodCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lorg/reflections/scanners/MemberUsageScanner$1;->this$0:Lorg/reflections/scanners/MemberUsageScanner;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljavassist/expr/MethodCall;->getMethod()Ljavassist/CtMethod;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/expr/MethodCall;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/reflections/scanners/MemberUsageScanner$1;->this$0:Lorg/reflections/scanners/MemberUsageScanner;

    .line 51
    invoke-virtual {p1}, Ljavassist/expr/MethodCall;->getMethod()Ljavassist/CtMethod;

    move-result-object v4

    invoke-virtual {v4}, Ljavassist/CtMethod;->getMethodInfo()Ljavassist/bytecode/MethodInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/reflections/scanners/MemberUsageScanner;->parameterNames(Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/expr/MethodCall;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lorg/reflections/scanners/MemberUsageScanner$1;->val$key:Ljava/lang/String;

    .line 50
    invoke-static {v1, v2, v3, v4}, Lorg/reflections/scanners/MemberUsageScanner;->access$000(Lorg/reflections/scanners/MemberUsageScanner;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Lorg/reflections/ReflectionsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find member "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/expr/MethodCall;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/reflections/scanners/MemberUsageScanner$1;->val$key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public edit(Ljavassist/expr/NewExpr;)V
    .locals 5
    .param p1, "e"    # Ljavassist/expr/NewExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Lorg/reflections/scanners/MemberUsageScanner$1;->this$0:Lorg/reflections/scanners/MemberUsageScanner;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljavassist/expr/NewExpr;->getConstructor()Ljavassist/CtConstructor;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtConstructor;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<init>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/reflections/scanners/MemberUsageScanner$1;->this$0:Lorg/reflections/scanners/MemberUsageScanner;

    .line 41
    invoke-virtual {p1}, Ljavassist/expr/NewExpr;->getConstructor()Ljavassist/CtConstructor;

    move-result-object v4

    invoke-virtual {v4}, Ljavassist/CtConstructor;->getMethodInfo()Ljavassist/bytecode/MethodInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/reflections/scanners/MemberUsageScanner;->parameterNames(Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/expr/NewExpr;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lorg/reflections/scanners/MemberUsageScanner$1;->val$key:Ljava/lang/String;

    .line 40
    invoke-static {v1, v2, v3, v4}, Lorg/reflections/scanners/MemberUsageScanner;->access$000(Lorg/reflections/scanners/MemberUsageScanner;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e1":Ljavassist/NotFoundException;
    new-instance v1, Lorg/reflections/ReflectionsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find new instance usage in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/reflections/scanners/MemberUsageScanner$1;->val$key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
