.class Lcom/nononsenseapps/filepicker/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nononsenseapps/filepicker/b;

.field final synthetic b:Lcom/nononsenseapps/filepicker/e;


# direct methods
.method constructor <init>(Lcom/nononsenseapps/filepicker/e;Lcom/nononsenseapps/filepicker/b;)V
    .locals 0

    iput-object p1, p0, Lcom/nononsenseapps/filepicker/f;->b:Lcom/nononsenseapps/filepicker/e;

    iput-object p2, p0, Lcom/nononsenseapps/filepicker/f;->a:Lcom/nononsenseapps/filepicker/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/f;->b:Lcom/nononsenseapps/filepicker/e;

    invoke-virtual {v0, p1}, Lcom/nononsenseapps/filepicker/e;->onLongClick(Landroid/view/View;)Z

    return-void
.end method
