.class Lcom/nononsenseapps/filepicker/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/app/AlertDialog;

.field final synthetic b:Lcom/nononsenseapps/filepicker/r;


# direct methods
.method constructor <init>(Lcom/nononsenseapps/filepicker/r;Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nononsenseapps/filepicker/s;->b:Lcom/nononsenseapps/filepicker/r;

    iput-object p2, p0, Lcom/nononsenseapps/filepicker/s;->a:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/s;->a:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->cancel()V

    return-void
.end method
