.class public Lcom/google/android/gms/b/iq;
.super Lcom/google/android/gms/b/sh;


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:Lcom/google/android/gms/b/iu;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/iu;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/b/sh;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/iq;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/b/iq;->e:Lcom/google/android/gms/b/iu;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/iq;)Lcom/google/android/gms/b/iu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/iq;->e:Lcom/google/android/gms/b/iu;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/b/iq;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/b/iq;->f:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/b/iq;->f:Z

    new-instance v0, Lcom/google/android/gms/b/ir;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/ir;-><init>(Lcom/google/android/gms/b/iq;)V

    new-instance v2, Lcom/google/android/gms/b/sf;

    invoke-direct {v2}, Lcom/google/android/gms/b/sf;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/b/iq;->a(Lcom/google/android/gms/b/sg;Lcom/google/android/gms/b/se;)V

    new-instance v0, Lcom/google/android/gms/b/is;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/is;-><init>(Lcom/google/android/gms/b/iq;)V

    new-instance v2, Lcom/google/android/gms/b/it;

    invoke-direct {v2, p0}, Lcom/google/android/gms/b/it;-><init>(Lcom/google/android/gms/b/iq;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/b/iq;->a(Lcom/google/android/gms/b/sg;Lcom/google/android/gms/b/se;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
