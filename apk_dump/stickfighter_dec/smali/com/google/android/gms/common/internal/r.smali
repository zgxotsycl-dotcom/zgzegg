.class public final Lcom/google/android/gms/common/internal/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/m;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/m;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/internal/r;->b:I

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "Expecting a valid IBinder"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/av;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/m;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/am;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/al;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/m;->a(Lcom/google/android/gms/common/internal/m;Lcom/google/android/gms/common/internal/al;)Lcom/google/android/gms/common/internal/al;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/m;

    iget v1, p0, Lcom/google/android/gms/common/internal/r;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/m;->c(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/m;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/m;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/m;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/m;->b:Landroid/os/Handler;

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/gms/common/internal/r;->b:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
