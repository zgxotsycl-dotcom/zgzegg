.class public final Lcom/google/android/gms/b/jj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/b/jc;

.field public final c:Lcom/google/android/gms/b/jv;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/android/gms/b/jf;

.field public final f:Lcom/google/android/gms/b/kb;


# direct methods
.method public constructor <init>(I)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move v5, p1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/b/jj;-><init>(Lcom/google/android/gms/b/jc;Lcom/google/android/gms/b/jv;Ljava/lang/String;Lcom/google/android/gms/b/jf;ILcom/google/android/gms/b/kb;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/b/jc;Lcom/google/android/gms/b/jv;Ljava/lang/String;Lcom/google/android/gms/b/jf;ILcom/google/android/gms/b/kb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/b/jj;->b:Lcom/google/android/gms/b/jc;

    iput-object p2, p0, Lcom/google/android/gms/b/jj;->c:Lcom/google/android/gms/b/jv;

    iput-object p3, p0, Lcom/google/android/gms/b/jj;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/b/jj;->e:Lcom/google/android/gms/b/jf;

    iput p5, p0, Lcom/google/android/gms/b/jj;->a:I

    iput-object p6, p0, Lcom/google/android/gms/b/jj;->f:Lcom/google/android/gms/b/kb;

    return-void
.end method
