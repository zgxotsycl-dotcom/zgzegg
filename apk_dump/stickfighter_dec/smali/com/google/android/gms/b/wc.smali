.class Lcom/google/android/gms/b/wc;
.super Lcom/google/android/gms/b/vu;


# instance fields
.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/google/android/gms/b/wb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/wb;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/wc;->c:Lcom/google/android/gms/b/wb;

    iput-object p2, p0, Lcom/google/android/gms/b/wc;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/b/vu;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/wc;->c:Lcom/google/android/gms/b/wb;

    iget-object v0, v0, Lcom/google/android/gms/b/wb;->a:Lcom/google/android/gms/b/vz;

    invoke-static {v0}, Lcom/google/android/gms/b/vz;->c(Lcom/google/android/gms/b/vz;)V

    iget-object v0, p0, Lcom/google/android/gms/b/wc;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
