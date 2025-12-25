.class public abstract Lcom/google/android/gms/b/we;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/Object;

.field private static d:Lcom/google/android/gms/b/wi;

.field private static e:I

.field private static f:Ljava/lang/String;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/Object;

.field private g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/we;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/b/we;->d:Lcom/google/android/gms/b/wi;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/b/we;->e:I

    const-string v0, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    sput-object v0, Lcom/google/android/gms/b/we;->f:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/b/we;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/b/we;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/b/we;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lcom/google/android/gms/b/we;->e:I

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/b/we;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/wg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/wg;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/b/we;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/wf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/wf;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/we;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/wh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/wh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/b/we;->d:Lcom/google/android/gms/b/wi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d()Lcom/google/android/gms/b/wi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/b/we;->d:Lcom/google/android/gms/b/wi;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/we;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/we;->g:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/we;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/we;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
