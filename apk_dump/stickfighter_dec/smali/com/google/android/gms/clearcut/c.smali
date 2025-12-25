.class public Lcom/google/android/gms/clearcut/c;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/gms/clearcut/a;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private final g:Lcom/google/android/gms/clearcut/d;

.field private h:Lcom/google/android/gms/clearcut/d;

.field private i:Ljava/util/ArrayList;

.field private final j:Lcom/google/android/gms/b/ye;

.field private k:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/clearcut/a;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/clearcut/c;-><init>(Lcom/google/android/gms/clearcut/a;[BLcom/google/android/gms/clearcut/d;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/clearcut/a;[BLcom/google/android/gms/clearcut/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/clearcut/c;-><init>(Lcom/google/android/gms/clearcut/a;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/clearcut/a;[BLcom/google/android/gms/clearcut/d;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/clearcut/c;->a:Lcom/google/android/gms/clearcut/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/clearcut/c;->a:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->a(Lcom/google/android/gms/clearcut/a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/c;->b:I

    iget-object v0, p0, Lcom/google/android/gms/clearcut/c;->a:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->b(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/c;->a:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->c(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/c;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/c;->a:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->d(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/c;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/c;->a:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->e(Lcom/google/android/gms/clearcut/a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/c;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/c;->i:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gms/b/ye;

    invoke-direct {v0}, Lcom/google/android/gms/b/ye;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/clearcut/c;->j:Lcom/google/android/gms/b/ye;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/c;->k:Z

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->c(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/c;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->d(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/c;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/c;->j:Lcom/google/android/gms/b/ye;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->f(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/b/wn;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/b/wn;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/b/ye;->c:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/c;->j:Lcom/google/android/gms/b/ye;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->f(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/b/wn;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/b/wn;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/b/ye;->d:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/c;->j:Lcom/google/android/gms/b/ye;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->g(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/c;->j:Lcom/google/android/gms/b/ye;

    iget-wide v2, v2, Lcom/google/android/gms/b/ye;->c:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/clearcut/e;->a(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/b/ye;->q:J

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/c;->j:Lcom/google/android/gms/b/ye;

    iput-object p2, v0, Lcom/google/android/gms/b/ye;->l:[B

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/clearcut/c;->g:Lcom/google/android/gms/clearcut/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/clearcut/LogEventParcelable;
    .locals 10

    new-instance v9, Lcom/google/android/gms/clearcut/LogEventParcelable;

    new-instance v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/c;->a:Lcom/google/android/gms/clearcut/a;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/a;->i(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/c;->a:Lcom/google/android/gms/clearcut/a;

    invoke-static {v2}, Lcom/google/android/gms/clearcut/a;->j(Lcom/google/android/gms/clearcut/a;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/clearcut/c;->b:I

    iget-object v4, p0, Lcom/google/android/gms/clearcut/c;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/clearcut/c;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/clearcut/c;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/clearcut/c;->a:Lcom/google/android/gms/clearcut/a;

    invoke-static {v7}, Lcom/google/android/gms/clearcut/a;->h(Lcom/google/android/gms/clearcut/a;)Z

    move-result v7

    iget v8, p0, Lcom/google/android/gms/clearcut/c;->f:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/google/android/gms/clearcut/c;->j:Lcom/google/android/gms/b/ye;

    iget-object v4, p0, Lcom/google/android/gms/clearcut/c;->g:Lcom/google/android/gms/clearcut/d;

    iget-object v5, p0, Lcom/google/android/gms/clearcut/c;->h:Lcom/google/android/gms/clearcut/d;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/c;->i:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/a;->a(Ljava/util/ArrayList;)[I

    move-result-object v6

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/clearcut/LogEventParcelable;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/b/ye;Lcom/google/android/gms/clearcut/d;Lcom/google/android/gms/clearcut/d;[I)V

    return-object v9
.end method

.method public a(I)Lcom/google/android/gms/clearcut/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/c;->j:Lcom/google/android/gms/b/ye;

    iput p1, v0, Lcom/google/android/gms/b/ye;->g:I

    return-object p0
.end method

.method public a(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/common/api/v;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/c;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/c;->k:Z

    iget-object v0, p0, Lcom/google/android/gms/clearcut/c;->a:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->k(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/clearcut/c;->a()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/clearcut/f;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/v;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/google/android/gms/clearcut/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/c;->j:Lcom/google/android/gms/b/ye;

    iput p1, v0, Lcom/google/android/gms/b/ye;->h:I

    return-object p0
.end method
