#import <UIKit/UIKit.h>

#define NOOP 0
#define SQRT 1
#define DIV 2
#define MUL 3
#define MINUS 4
#define PLUS 5
#define EQUAL 6


@interface ViewController : UIViewController{
    NSInteger op;
    double curnum, tempnum, ans;
    NSString *theNum;
}

@property NSInteger op;
@property double curnum, tempnum, ans;
@property (strong, nonatomic) NSString* theNum;
@property (strong, nonatomic) IBOutlet UILabel *screen;
/*
@property (strong, nonatomic) IBOutlet UIButton *back;
@property (strong, nonatomic) IBOutlet UIButton *CE;
@property (strong, nonatomic) IBOutlet UIButton *C;
@property (strong, nonatomic) IBOutlet UIButton *sqrt;
@property (strong, nonatomic) IBOutlet UIButton *divide;
@property (strong, nonatomic) IBOutlet UIButton *multiply;
@property (strong, nonatomic) IBOutlet UIButton *minus;
@property (strong, nonatomic) IBOutlet UIButton *plus;
@property (strong, nonatomic) IBOutlet UIButton *equal;
@property (strong, nonatomic) IBOutlet UIButton *zero;
@property (strong, nonatomic) IBOutlet UIButton *one;
@property (strong, nonatomic) IBOutlet UIButton *two;
@property (strong, nonatomic) IBOutlet UIButton *three;
@property (strong, nonatomic) IBOutlet UIButton *four;
@property (strong, nonatomic) IBOutlet UIButton *five;
@property (strong, nonatomic) IBOutlet UIButton *six;
@property (strong, nonatomic) IBOutlet UIButton *seven;
@property (strong, nonatomic) IBOutlet UIButton *eight;
@property (strong, nonatomic) IBOutlet UIButton *nine;
 */

@end

