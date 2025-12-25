.class public Lcom/nononsenseapps/filepicker/FilePickerActivity;
.super Lcom/nononsenseapps/filepicker/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nononsenseapps/filepicker/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;IZZ)Lcom/nononsenseapps/filepicker/b;
    .locals 2

    new-instance v0, Lcom/nononsenseapps/filepicker/k;

    invoke-direct {v0}, Lcom/nononsenseapps/filepicker/k;-><init>()V

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nononsenseapps/filepicker/b;->a(Ljava/lang/String;IZZ)V

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
