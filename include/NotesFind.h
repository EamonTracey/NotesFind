@interface UINavigationItem (Notes)
@property UIBarButtonItem *customRightItem;
@end

@interface ICNoteEditorViewController
@property UINavigationItem *navigationItem;
- (void)beginTextFinding;
@end