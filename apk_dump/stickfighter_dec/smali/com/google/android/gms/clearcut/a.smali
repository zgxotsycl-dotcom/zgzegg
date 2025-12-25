.class public final Lcom/google/android/gms/clearcut/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/i;

.field public static final b:Lcom/google/android/gms/common/api/g;

.field public static final c:Lcom/google/android/gms/common/api/a;

.field public static final d:Lcom/google/android/gms/clearcut/f;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private final l:Z

.field private m:I

.field private final n:Lcom/google/android/gms/clearcut/f;

.field private final o:Lcom/google/android/gms/b/wn;

.field private p:Lcom/google/android/gms/clearcut/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/i;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->a:Lcom/google/android/gms/common/api/i;

    new-instance v0, Lcom/google/android/gms/clearcut/b;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->b:Lcom/google/android/gms/common/api/g;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "ClearcutLogger.API"

    sget-object v2, Lcom/google/android/gms/clearcut/a;->b:Lcom/google/android/gms/common/api/g;

    sget-object v3, Lcom/google/android/gms/clearcut/a;->a:Lcom/google/android/gms/common/api/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/i;)V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->c:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/b/tp;

    invoke-direct {v0}, Lcom/google/android/gms/b/tp;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->d:Lcom/google/android/gms/clearcut/f;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/clearcut/f;Lcom/google/android/gms/b/wn;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/clearcut/a;->i:I

    iput v0, p0, Lcom/google/android/gms/clearcut/a;->m:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/clearcut/a;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/clearcut/a;->f:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/clearcut/a;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/clearcut/a;->g:I

    iput p2, p0, Lcom/google/android/gms/clearcut/a;->i:I

    iput-object p3, p0, Lcom/google/android/gms/clearcut/a;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/clearcut/a;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/clearcut/a;->k:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/clearcut/a;->l:Z

    iput-object p7, p0, Lcom/google/android/gms/clearcut/a;->n:Lcom/google/android/gms/clearcut/f;

    iput-object p8, p0, Lcom/google/android/gms/clearcut/a;->o:Lcom/google/android/gms/b/wn;

    new-instance v1, Lcom/google/android/gms/clearcut/e;

    invoke-direct {v1}, Lcom/google/android/gms/clearcut/e;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/clearcut/a;->p:Lcom/google/android/gms/clearcut/e;

    iput v0, p0, Lcom/google/android/gms/clearcut/a;->m:I

    iget-boolean v1, p0, Lcom/google/android/gms/clearcut/a;->l:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/clearcut/a;->j:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "can\'t be anonymous with an upload account"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/av;->b(ZLjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, -0x1

    const/4 v6, 0x0

    sget-object v7, Lcom/google/android/gms/clearcut/a;->d:Lcom/google/android/gms/clearcut/f;

    invoke-static {}, Lcom/google/android/gms/b/wp;->d()Lcom/google/android/gms/b/wn;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/clearcut/a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/clearcut/f;Lcom/google/android/gms/b/wn;)V

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v1, "ClearcutLogger"

    const-string v2, "This can\'t happen."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/clearcut/a;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/clearcut/a;->i:I

    return v0
.end method

.method static synthetic a(Ljava/util/ArrayList;)[I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/clearcut/a;->b(Ljava/util/ArrayList;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/util/ArrayList;)[I
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v0, v1, 0x1

    aput v4, v2, v1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/clearcut/a;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/clearcut/a;->m:I

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/b/wn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->o:Lcom/google/android/gms/b/wn;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->p:Lcom/google/android/gms/clearcut/e;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/clearcut/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/a;->l:Z

    return v0
.end method

.method static synthetic i(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/clearcut/a;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/clearcut/a;->g:I

    return v0
.end method

.method static synthetic k(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->n:Lcom/google/android/gms/clearcut/f;

    return-object v0
.end method


# virtual methods
.method public a([B)Lcom/google/android/gms/clearcut/c;
    .locals 2

    new-instance v0, Lcom/google/android/gms/clearcut/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/clearcut/c;-><init>(Lcom/google/android/gms/clearcut/a;[BLcom/google/android/gms/clearcut/b;)V

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/n;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->n:Lcom/google/android/gms/clearcut/f;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/clearcut/f;->a(Lcom/google/android/gms/common/api/n;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method
