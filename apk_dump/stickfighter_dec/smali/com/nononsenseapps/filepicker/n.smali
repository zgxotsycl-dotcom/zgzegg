.class Lcom/nononsenseapps/filepicker/n;
.super Landroid/os/FileObserver;


# instance fields
.field final synthetic a:Lcom/nononsenseapps/filepicker/l;


# direct methods
.method constructor <init>(Lcom/nononsenseapps/filepicker/l;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/nononsenseapps/filepicker/n;->a:Lcom/nononsenseapps/filepicker/l;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/n;->a:Lcom/nononsenseapps/filepicker/l;

    invoke-virtual {v0}, Lcom/nononsenseapps/filepicker/l;->u()V

    return-void
.end method
