.class Lcom/nononsenseapps/filepicker/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nononsenseapps/filepicker/b;


# direct methods
.method constructor <init>(Lcom/nononsenseapps/filepicker/b;)V
    .locals 0

    iput-object p1, p0, Lcom/nononsenseapps/filepicker/c;->a:Lcom/nononsenseapps/filepicker/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/c;->a:Lcom/nononsenseapps/filepicker/b;

    invoke-static {v0}, Lcom/nononsenseapps/filepicker/b;->a(Lcom/nononsenseapps/filepicker/b;)Lcom/nononsenseapps/filepicker/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/c;->a:Lcom/nononsenseapps/filepicker/b;

    invoke-static {v0}, Lcom/nononsenseapps/filepicker/b;->a(Lcom/nononsenseapps/filepicker/b;)Lcom/nononsenseapps/filepicker/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/nononsenseapps/filepicker/i;->a()V

    :cond_0
    return-void
.end method
