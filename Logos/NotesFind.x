#import "../include/NotesFind.h"

%hook ICNoteEditorViewController

- (void)viewDidAppear:(BOOL)flag {

    UIBarButtonItem *shareItem = [[self navigationItem] customRightItem];
    UILongPressGestureRecognizer *notesFindGestureRecognizer = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(notesfind_openFinder)];
    [[shareItem valueForKey:@"_view"] addGestureRecognizer:notesFindGestureRecognizer];

    %orig;

}

%new
- (void)notesfind_openFinder {

	[self beginTextFinding];

}

%end