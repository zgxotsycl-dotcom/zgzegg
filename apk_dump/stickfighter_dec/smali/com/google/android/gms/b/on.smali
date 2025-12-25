.class public final Lcom/google/android/gms/b/on;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field a:Lcom/google/android/gms/b/sk;

.field b:Lcom/google/android/gms/b/iq;

.field public final c:Lcom/google/android/gms/b/fy;

.field public final d:Lcom/google/android/gms/b/fy;

.field private final e:Ljava/lang/Object;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/b/rv;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/on;->e:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/b/rv;

    invoke-direct {v0}, Lcom/google/android/gms/b/rv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/on;->h:Lcom/google/android/gms/b/rv;

    new-instance v0, Lcom/google/android/gms/b/oo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/oo;-><init>(Lcom/google/android/gms/b/on;)V

    iput-object v0, p0, Lcom/google/android/gms/b/on;->c:Lcom/google/android/gms/b/fy;

    new-instance v0, Lcom/google/android/gms/b/op;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/op;-><init>(Lcom/google/android/gms/b/on;)V

    iput-object v0, p0, Lcom/google/android/gms/b/on;->d:Lcom/google/android/gms/b/fy;

    iput-object p2, p0, Lcom/google/android/gms/b/on;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/b/on;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/on;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/on;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/b/on;)Lcom/google/android/gms/b/rv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/on;->h:Lcom/google/android/gms/b/rv;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/b/on;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/on;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/b/on;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/on;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/b/iq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/on;->b:Lcom/google/android/gms/b/iq;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/b/iq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/on;->b:Lcom/google/android/gms/b/iq;

    return-void
.end method

.method public a(Lcom/google/android/gms/b/sk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/on;->a:Lcom/google/android/gms/b/sk;

    return-void
.end method

.method public b()Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/on;->h:Lcom/google/android/gms/b/rv;

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/on;->a:Lcom/google/android/gms/b/sk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/on;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/b/on;->a:Lcom/google/android/gms/b/sk;

    :cond_0
    return-void
.end method
