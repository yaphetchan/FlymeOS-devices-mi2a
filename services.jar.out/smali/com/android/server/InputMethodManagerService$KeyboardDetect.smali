.class Lcom/android/server/InputMethodManagerService$KeyboardDetect;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyboardDetect"
.end annotation


# instance fields
.field final BACKGROUND:I

.field final FOREGROUND:I

.field private final GPU_DEFAULT_PWRLVL:I

.field final INACTIVE:I

.field private keyboardState:I

.field private mPerf:Lorg/codeaurora/Performance;

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 390
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    const/16 v0, 0x4c05

    iput v0, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->GPU_DEFAULT_PWRLVL:I

    .line 392
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->mPerf:Lorg/codeaurora/Performance;

    .line 393
    iput v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardState:I

    .line 395
    iput v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->INACTIVE:I

    .line 396
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->FOREGROUND:I

    .line 397
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->BACKGROUND:I

    return-void
.end method


# virtual methods
.method declared-synchronized getKeyboardState()I
    .locals 1

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized keyboardPerflockAcquire()V
    .locals 6

    .prologue
    .line 400
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->mPerf:Lorg/codeaurora/Performance;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 402
    :try_start_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->mPerf:Lorg/codeaurora/Performance;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x4c05

    aput v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    :goto_0
    monitor-exit p0

    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "InputMethodManagerService"

    const-string v2, "Exception caught at perflock acquire"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 400
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 409
    :cond_0
    :try_start_3
    const-string v1, "InputMethodManagerService"

    const-string v2, "Perflock object null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized keyboardPerflockRelease()V
    .locals 3

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->mPerf:Lorg/codeaurora/Performance;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 417
    :try_start_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->mPerf:Lorg/codeaurora/Performance;

    invoke-virtual {v1}, Lorg/codeaurora/Performance;->perfLockRelease()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    :goto_0
    monitor-exit p0

    return-void

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "InputMethodManagerService"

    const-string v2, "Exception caught at perflock release"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 415
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 424
    :cond_0
    :try_start_3
    const-string v1, "InputMethodManagerService"

    const-string v2, "Perflock object null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized setKeyboardState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 434
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    monitor-exit p0

    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
