.class public final Lcom/google/android/gms/b/xe;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/i;

.field public static final b:Lcom/google/android/gms/common/api/i;

.field public static final c:Lcom/google/android/gms/common/api/g;

.field static final d:Lcom/google/android/gms/common/api/g;

.field public static final e:Lcom/google/android/gms/common/api/Scope;

.field public static final f:Lcom/google/android/gms/common/api/Scope;

.field public static final g:Lcom/google/android/gms/common/api/a;

.field public static final h:Lcom/google/android/gms/common/api/a;

.field public static final i:Lcom/google/android/gms/b/xi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/i;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/xe;->a:Lcom/google/android/gms/common/api/i;

    new-instance v0, Lcom/google/android/gms/common/api/i;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/xe;->b:Lcom/google/android/gms/common/api/i;

    new-instance v0, Lcom/google/android/gms/b/xf;

    invoke-direct {v0}, Lcom/google/android/gms/b/xf;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/xe;->c:Lcom/google/android/gms/common/api/g;

    new-instance v0, Lcom/google/android/gms/b/xg;

    invoke-direct {v0}, Lcom/google/android/gms/b/xg;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/xe;->d:Lcom/google/android/gms/common/api/g;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/b/xe;->e:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/b/xe;->f:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "SignIn.API"

    sget-object v2, Lcom/google/android/gms/b/xe;->c:Lcom/google/android/gms/common/api/g;

    sget-object v3, Lcom/google/android/gms/b/xe;->a:Lcom/google/android/gms/common/api/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/i;)V

    sput-object v0, Lcom/google/android/gms/b/xe;->g:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "SignIn.INTERNAL_API"

    sget-object v2, Lcom/google/android/gms/b/xe;->d:Lcom/google/android/gms/common/api/g;

    sget-object v3, Lcom/google/android/gms/b/xe;->b:Lcom/google/android/gms/common/api/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/i;)V

    sput-object v0, Lcom/google/android/gms/b/xe;->h:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/signin/internal/m;

    invoke-direct {v0}, Lcom/google/android/gms/signin/internal/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/xe;->i:Lcom/google/android/gms/b/xi;

    return-void
.end method
