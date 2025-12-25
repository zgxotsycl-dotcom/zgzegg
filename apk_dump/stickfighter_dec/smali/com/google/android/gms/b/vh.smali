.class public final Lcom/google/android/gms/b/vh;
.super Lcom/google/android/gms/common/api/n;

# interfaces
.implements Lcom/google/android/gms/b/vw;


# instance fields
.field final a:Ljava/util/Queue;

.field b:Lcom/google/android/gms/b/vm;

.field final c:Ljava/util/Map;

.field d:Ljava/util/Set;

.field final e:Lcom/google/android/gms/common/internal/h;

.field final f:Ljava/util/Map;

.field final g:Lcom/google/android/gms/common/api/g;

.field final h:Ljava/util/Set;

.field private final i:Ljava/util/concurrent/locks/Lock;

.field private final j:Lcom/google/android/gms/common/internal/w;

.field private k:Lcom/google/android/gms/b/vv;

.field private final l:I

.field private final m:Landroid/content/Context;

.field private final n:Landroid/os/Looper;

.field private volatile o:Z

.field private p:J

.field private q:J

.field private final r:Lcom/google/android/gms/b/vk;

.field private final s:Lcom/google/android/gms/common/b;

.field private final t:Ljava/util/Set;

.field private u:Lcom/google/android/gms/common/api/ab;

.field private final v:Ljava/util/ArrayList;

.field private w:Ljava/lang/Integer;

.field private final x:Lcom/google/android/gms/b/vn;

.field private final y:Lcom/google/android/gms/common/internal/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Lcom/google/android/gms/common/b;Lcom/google/android/gms/common/api/g;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/common/api/n;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/b/vh;->k:Lcom/google/android/gms/b/vv;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/b/vh;->a:Ljava/util/Queue;

    const-wide/32 v2, 0x1d4c0

    iput-wide v2, p0, Lcom/google/android/gms/b/vh;->p:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/gms/b/vh;->q:J

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/b/vh;->d:Ljava/util/Set;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/b/vh;->t:Ljava/util/Set;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/b/vh;->h:Ljava/util/Set;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/b/vh;->w:Ljava/lang/Integer;

    new-instance v2, Lcom/google/android/gms/b/vi;

    invoke-direct {v2, p0}, Lcom/google/android/gms/b/vi;-><init>(Lcom/google/android/gms/b/vh;)V

    iput-object v2, p0, Lcom/google/android/gms/b/vh;->x:Lcom/google/android/gms/b/vn;

    new-instance v2, Lcom/google/android/gms/b/vj;

    invoke-direct {v2, p0}, Lcom/google/android/gms/b/vj;-><init>(Lcom/google/android/gms/b/vh;)V

    iput-object v2, p0, Lcom/google/android/gms/b/vh;->y:Lcom/google/android/gms/common/internal/x;

    iput-object p1, p0, Lcom/google/android/gms/b/vh;->m:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    new-instance v2, Lcom/google/android/gms/common/internal/w;

    iget-object v3, p0, Lcom/google/android/gms/b/vh;->y:Lcom/google/android/gms/common/internal/x;

    invoke-direct {v2, p3, v3}, Lcom/google/android/gms/common/internal/w;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/x;)V

    iput-object v2, p0, Lcom/google/android/gms/b/vh;->j:Lcom/google/android/gms/common/internal/w;

    iput-object p3, p0, Lcom/google/android/gms/b/vh;->n:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/b/vk;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gms/b/vk;-><init>(Lcom/google/android/gms/b/vh;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/b/vh;->r:Lcom/google/android/gms/b/vk;

    iput-object p5, p0, Lcom/google/android/gms/b/vh;->s:Lcom/google/android/gms/common/b;

    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/gms/b/vh;->l:I

    iget v2, p0, Lcom/google/android/gms/b/vh;->l:I

    if-ltz v2, :cond_0

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/b/vh;->w:Ljava/lang/Integer;

    :cond_0
    iput-object p7, p0, Lcom/google/android/gms/b/vh;->f:Ljava/util/Map;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/b/vh;->c:Ljava/util/Map;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/b/vh;->v:Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/q;

    iget-object v4, p0, Lcom/google/android/gms/b/vh;->j:Lcom/google/android/gms/common/internal/w;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/w;->a(Lcom/google/android/gms/common/api/q;)V

    goto :goto_0

    :cond_1
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/r;

    iget-object v4, p0, Lcom/google/android/gms/b/vh;->j:Lcom/google/android/gms/common/internal/w;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/w;->a(Lcom/google/android/gms/common/api/r;)V

    goto :goto_1

    :cond_2
    iput-object p4, p0, Lcom/google/android/gms/b/vh;->e:Lcom/google/android/gms/common/internal/h;

    iput-object p6, p0, Lcom/google/android/gms/b/vh;->g:Lcom/google/android/gms/common/api/g;

    return-void
.end method

.method public static a(Ljava/lang/Iterable;Z)I
    .locals 6

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/h;->f()Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/common/api/h;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const/4 v3, 0x2

    :cond_2
    :goto_2
    return v3

    :cond_3
    const/4 v3, 0x3

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/b/vh;)Lcom/google/android/gms/common/api/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->u:Lcom/google/android/gms/common/api/ab;

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/b/vo;Lcom/google/android/gms/common/api/ab;Landroid/os/IBinder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/b/vo;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/b/vl;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/b/vl;-><init>(Lcom/google/android/gms/b/vo;Lcom/google/android/gms/common/api/ab;Landroid/os/IBinder;Lcom/google/android/gms/b/vi;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/b/vo;->a(Lcom/google/android/gms/b/vn;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/b/vl;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/b/vl;-><init>(Lcom/google/android/gms/b/vo;Lcom/google/android/gms/common/api/ab;Landroid/os/IBinder;Lcom/google/android/gms/b/vi;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/b/vo;->a(Lcom/google/android/gms/b/vn;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p0}, Lcom/google/android/gms/b/vo;->g()V

    invoke-interface {p0}, Lcom/google/android/gms/b/vo;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/ab;->a(I)V

    goto :goto_0

    :cond_1
    invoke-interface {p0, v1}, Lcom/google/android/gms/b/vo;->a(Lcom/google/android/gms/b/vn;)V

    invoke-interface {p0}, Lcom/google/android/gms/b/vo;->g()V

    invoke-interface {p0}, Lcom/google/android/gms/b/vo;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/ab;->a(I)V

    goto :goto_0
.end method

.method static b(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "SIGN_IN_MODE_NONE"

    goto :goto_0

    :pswitch_1
    const-string v0, "SIGN_IN_MODE_REQUIRED"

    goto :goto_0

    :pswitch_2
    const-string v0, "SIGN_IN_MODE_OPTIONAL"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/android/gms/b/vh;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/b/vh;->n()V

    return-void
.end method

.method private c(I)V
    .locals 12

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/b/vh;->w:Ljava/lang/Integer;

    if-nez v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/b/vh;->w:Ljava/lang/Integer;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/b/vh;->k:Lcom/google/android/gms/b/vv;

    if-eqz v1, :cond_2

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/b/vh;->w:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot use sign-in mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/b/vh;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Mode was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/b/vh;->w:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/b/vh;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/b/vh;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/h;->f()Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    :cond_3
    invoke-interface {v0}, Lcom/google/android/gms/common/api/h;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->w:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_5
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/b/vq;

    iget-object v1, p0, Lcom/google/android/gms/b/vh;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Lcom/google/android/gms/b/vh;->n:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/b/vh;->s:Lcom/google/android/gms/common/b;

    iget-object v6, p0, Lcom/google/android/gms/b/vh;->c:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/b/vh;->e:Lcom/google/android/gms/common/internal/h;

    iget-object v8, p0, Lcom/google/android/gms/b/vh;->f:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/gms/b/vh;->g:Lcom/google/android/gms/common/api/g;

    iget-object v10, p0, Lcom/google/android/gms/b/vh;->v:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/b/vq;-><init>(Landroid/content/Context;Lcom/google/android/gms/b/vh;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/b;Ljava/util/Map;Lcom/google/android/gms/common/internal/h;Ljava/util/Map;Lcom/google/android/gms/common/api/g;Ljava/util/ArrayList;Lcom/google/android/gms/b/vw;)V

    iput-object v0, p0, Lcom/google/android/gms/b/vh;->k:Lcom/google/android/gms/b/vv;

    goto/16 :goto_0

    :pswitch_1
    if-nez v2, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eqz v1, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    if-eqz v2, :cond_5

    new-instance v0, Lcom/google/android/gms/b/un;

    iget-object v1, p0, Lcom/google/android/gms/b/vh;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Lcom/google/android/gms/b/vh;->n:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/b/vh;->s:Lcom/google/android/gms/common/b;

    iget-object v6, p0, Lcom/google/android/gms/b/vh;->c:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/b/vh;->e:Lcom/google/android/gms/common/internal/h;

    iget-object v8, p0, Lcom/google/android/gms/b/vh;->f:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/gms/b/vh;->g:Lcom/google/android/gms/common/api/g;

    iget-object v10, p0, Lcom/google/android/gms/b/vh;->v:Ljava/util/ArrayList;

    move-object v2, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/b/un;-><init>(Landroid/content/Context;Lcom/google/android/gms/b/vh;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/b;Ljava/util/Map;Lcom/google/android/gms/common/internal/h;Ljava/util/Map;Lcom/google/android/gms/common/api/g;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/google/android/gms/b/vh;->k:Lcom/google/android/gms/b/vv;

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/google/android/gms/b/vh;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/b/vh;->o()V

    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->j:Lcom/google/android/gms/common/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/w;->b()V

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->k:Lcom/google/android/gms/b/vv;

    invoke-interface {v0}, Lcom/google/android/gms/b/vv;->a()V

    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/b/vh;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/b/vh;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/b/vh;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/b/vh;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public a()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->n:Landroid/os/Looper;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/b/ug;)Lcom/google/android/gms/b/ug;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/b/ug;->b()Lcom/google/android/gms/common/api/i;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This task can not be enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/av;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/b/ug;->b()Lcom/google/android/gms/common/api/i;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/av;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->k:Lcom/google/android/gms/b/vv;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-object p1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->k:Lcom/google/android/gms/b/vv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/vv;->a(Lcom/google/android/gms/b/ug;)Lcom/google/android/gms/b/ug;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/h;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/av;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a(I)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal sign-in mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/av;->b(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/b/vh;->c(I)V

    invoke-direct {p0}, Lcom/google/android/gms/b/vh;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/ug;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/vh;->b(Lcom/google/android/gms/b/ug;)Lcom/google/android/gms/b/ug;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->j:Lcom/google/android/gms/common/internal/w;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/w;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method a(Lcom/google/android/gms/b/vo;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->x:Lcom/google/android/gms/b/vn;

    invoke-interface {p1, v0}, Lcom/google/android/gms/b/vo;->a(Lcom/google/android/gms/b/vn;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->s:Lcom/google/android/gms/common/b;

    iget-object v1, p0, Lcom/google/android/gms/b/vh;->m:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/b/vh;->j()Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/b/vh;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->j:Lcom/google/android/gms/common/internal/w;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/w;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->j:Lcom/google/android/gms/common/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/w;->a()V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/r;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->j:Lcom/google/android/gms/common/internal/w;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/w;->a(Lcom/google/android/gms/common/api/r;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/vh;->m:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/b/vh;->o:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/vh;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mUnconsumedRunners.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/vh;->h:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->k:Lcom/google/android/gms/b/vv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->k:Lcom/google/android/gms/b/vv;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/b/vv;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a_(I)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/b/vh;->i()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/vo;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    const-string v4, "The connection to Google Play services was lost"

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/b/vo;->d(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->j:Lcom/google/android/gms/common/internal/w;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/w;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->j:Lcom/google/android/gms/common/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/w;->a()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/b/vh;->m()V

    :cond_2
    return-void
.end method

.method public b(Lcom/google/android/gms/b/ug;)Lcom/google/android/gms/b/ug;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/b/ug;->b()Lcom/google/android/gms/common/api/i;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/av;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->k:Lcom/google/android/gms/b/vv;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/b/vh;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/vo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/vh;->a(Lcom/google/android/gms/b/vo;)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/vo;->c(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-object p1

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->k:Lcom/google/android/gms/b/vv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/vv;->b(Lcom/google/android/gms/b/ug;)Lcom/google/android/gms/b/ug;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/b/vh;->l:I

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/b/vh;->w:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/av;->a(ZLjava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->w:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/vh;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->w:Ljava/lang/Integer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/b/vh;->a(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/vh;->w:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->w:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public b(Lcom/google/android/gms/common/api/r;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->j:Lcom/google/android/gms/common/internal/w;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/w;->b(Lcom/google/android/gms/common/api/r;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/b/vh;->e()V

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->k:Lcom/google/android/gms/b/vv;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/b/vh;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/b/vh;->j()Z

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->k:Lcom/google/android/gms/b/vv;

    invoke-interface {v0}, Lcom/google/android/gms/b/vv;->b()V

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->j:Lcom/google/android/gms/common/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/w;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/b/vh;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method e()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/vo;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/b/vo;->a(Lcom/google/android/gms/b/vn;)V

    invoke-interface {v0}, Lcom/google/android/gms/b/vo;->a()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/b/vo;->g()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/b/vo;->c()V

    invoke-interface {v0}, Lcom/google/android/gms/b/vo;->b()Lcom/google/android/gms/common/api/i;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/b/vh;->a(Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/api/h;->i()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/b/vh;->u:Lcom/google/android/gms/common/api/ab;

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/b/vh;->a(Lcom/google/android/gms/b/vo;Lcom/google/android/gms/common/api/ab;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/vx;

    invoke-virtual {v0}, Lcom/google/android/gms/b/vx;->a()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method f()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/vo;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/b/vo;->a(Lcom/google/android/gms/b/vn;)V

    invoke-interface {v0}, Lcom/google/android/gms/b/vo;->g()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->k:Lcom/google/android/gms/b/vv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->k:Lcom/google/android/gms/b/vv;

    invoke-interface {v0}, Lcom/google/android/gms/b/vv;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/b/vh;->o:Z

    return v0
.end method

.method i()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/b/vh;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/google/android/gms/b/vh;->o:Z

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->b:Lcom/google/android/gms/b/vm;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/b/vm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/b/vm;-><init>(Lcom/google/android/gms/b/vh;)V

    iget-object v2, p0, Lcom/google/android/gms/b/vh;->s:Lcom/google/android/gms/common/b;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/b/vu;->a(Landroid/content/Context;Lcom/google/android/gms/b/vu;Lcom/google/android/gms/common/b;)Lcom/google/android/gms/b/vu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/vm;

    iput-object v0, p0, Lcom/google/android/gms/b/vh;->b:Lcom/google/android/gms/b/vm;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/vh;->r:Lcom/google/android/gms/b/vk;

    iget-object v1, p0, Lcom/google/android/gms/b/vh;->r:Lcom/google/android/gms/b/vk;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/b/vk;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/b/vh;->p:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/b/vk;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->r:Lcom/google/android/gms/b/vk;

    iget-object v1, p0, Lcom/google/android/gms/b/vh;->r:Lcom/google/android/gms/b/vk;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/b/vk;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/b/vh;->q:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/b/vk;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method j()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/b/vh;->h()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/b/vh;->o:Z

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->r:Lcom/google/android/gms/b/vk;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/b/vk;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->r:Lcom/google/android/gms/b/vk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/vk;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->b:Lcom/google/android/gms/b/vm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/vh;->b:Lcom/google/android/gms/b/vm;

    invoke-virtual {v0}, Lcom/google/android/gms/b/vm;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/b/vh;->b:Lcom/google/android/gms/b/vm;

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method k()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const-string v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/google/android/gms/b/vh;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
