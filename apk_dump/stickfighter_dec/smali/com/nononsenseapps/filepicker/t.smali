.class Lcom/nononsenseapps/filepicker/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/support/v7/app/AlertDialog;

.field final synthetic c:Lcom/nononsenseapps/filepicker/r;


# direct methods
.method constructor <init>(Lcom/nononsenseapps/filepicker/r;Landroid/widget/EditText;Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nononsenseapps/filepicker/t;->c:Lcom/nononsenseapps/filepicker/r;

    iput-object p2, p0, Lcom/nononsenseapps/filepicker/t;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/nononsenseapps/filepicker/t;->b:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/t;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/t;->c:Lcom/nononsenseapps/filepicker/r;

    iget-object v1, v1, Lcom/nononsenseapps/filepicker/r;->a:Lcom/nononsenseapps/filepicker/q;

    invoke-virtual {v1, v0}, Lcom/nononsenseapps/filepicker/q;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/t;->c:Lcom/nononsenseapps/filepicker/r;

    iget-object v1, v1, Lcom/nononsenseapps/filepicker/r;->a:Lcom/nononsenseapps/filepicker/q;

    invoke-static {v1}, Lcom/nononsenseapps/filepicker/q;->a(Lcom/nononsenseapps/filepicker/q;)Lcom/nononsenseapps/filepicker/v;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/t;->c:Lcom/nononsenseapps/filepicker/r;

    iget-object v1, v1, Lcom/nononsenseapps/filepicker/r;->a:Lcom/nononsenseapps/filepicker/q;

    invoke-static {v1}, Lcom/nononsenseapps/filepicker/q;->a(Lcom/nononsenseapps/filepicker/q;)Lcom/nononsenseapps/filepicker/v;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nononsenseapps/filepicker/v;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/t;->b:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method
