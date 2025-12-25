.class public final Lcom/google/android/gms/b/xk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/f;


# static fields
.field public static final a:Lcom/google/android/gms/b/xk;


# instance fields
.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/gms/common/api/s;

.field private final f:Z

.field private final g:Z

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/xm;

    invoke-direct {v0}, Lcom/google/android/gms/b/xm;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/b/xm;->a()Lcom/google/android/gms/b/xk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/b/xk;->a:Lcom/google/android/gms/b/xk;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/s;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/b/xk;->b:Z

    iput-boolean p2, p0, Lcom/google/android/gms/b/xk;->c:Z

    iput-object p3, p0, Lcom/google/android/gms/b/xk;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/b/xk;->e:Lcom/google/android/gms/common/api/s;

    iput-boolean p5, p0, Lcom/google/android/gms/b/xk;->f:Z

    iput-boolean p6, p0, Lcom/google/android/gms/b/xk;->g:Z

    iput-boolean p7, p0, Lcom/google/android/gms/b/xk;->h:Z

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/s;ZZZLcom/google/android/gms/b/xl;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/b/xk;-><init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/s;ZZZ)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/b/xk;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/b/xk;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/xk;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/google/android/gms/common/api/s;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/xk;->e:Lcom/google/android/gms/common/api/s;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/b/xk;->f:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/b/xk;->g:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/b/xk;->h:Z

    return v0
.end method
