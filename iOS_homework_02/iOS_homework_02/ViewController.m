#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize curnum, tempnum, op, ans, theNum, screen;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view
    [self setCurnum:0.0];
    [self setTempnum:0.0];
    [self setOp:NOOP];
    [self setTheNum:@"0"];
    [self setAns:0.0];
    [self display];
}
    
-(void)display{
    double outputdb = [theNum doubleValue];
    [screen setText:[NSString stringWithFormat:@"%g", outputdb]];
}
-(void)calculate{
    if(op == NOOP){
        curnum = [theNum doubleValue];
        tempnum = [theNum doubleValue];
        theNum = @"0";
    }
    else if(op == PLUS){
        curnum = [theNum doubleValue];
        tempnum = tempnum + curnum;
        theNum = [@(tempnum) stringValue];
        [self display];
        theNum = @"0";
    }
    else if(op == MINUS){
        curnum = [theNum doubleValue];
        tempnum = tempnum - curnum;
        theNum = [@(tempnum) stringValue];
        [self display];
        theNum = @"0";
    }
    else if(op == MUL){
        curnum = [theNum doubleValue];
        tempnum = tempnum * curnum;
        theNum = [@(tempnum) stringValue];
        [self display];
        theNum = @"0";
    }
    else if(op == DIV){
        curnum = [theNum doubleValue];
        if (curnum == 0){
            [screen setText:@"錯誤"];
        }
        else{
            tempnum = tempnum / curnum;
            theNum = [@(tempnum) stringValue];
            [self display];
            theNum = @"0";
        }
    }
    else{ // if(op == SQRT)//
        
        tempnum = sqrt(tempnum);
        theNum = [@(tempnum) stringValue];
        [self display];
        theNum = @"0";
    }
}
- (IBAction)pressback:(id)sender {
    if(theNum.length == 0){
       theNum = @"0";
    }
    else{
        theNum = [theNum substringToIndex:[theNum length]-1];
    }
    [self display];
}
- (IBAction)pressCE:(id)sender {
    theNum = @"0";
    [self display];
}
- (IBAction)pressC:(id)sender {
    [self setCurnum:0.0];
    [self setTempnum:0.0];
    [self setOp:NOOP];
    [self setTheNum:@"0"];
    [self setAns:0.0];
    [self display];
}
- (IBAction)presssqrt:(id)sender {
    if(op != SQRT)
        [self calculate];
    op = SQRT;
    [self calculate];
    
}
- (IBAction)pressdiv:(id)sender{
    [self calculate];
    op = DIV;
}
- (IBAction)pressmul:(id)sender {
    [self calculate];
    op = MUL;
}
- (IBAction)pressminus:(id)sender {
    [self calculate];
    op = MINUS;
}
- (IBAction)pressplus:(id)sender {
    [self calculate];
    op = PLUS;
}
- (IBAction)pressequal:(id)sender {
    [self calculate];
}
- (IBAction)presszero:(id)sender {
    theNum = [theNum stringByAppendingString:@"0"];
    [self display];
}
- (IBAction)pressone:(id)sender {
    theNum = [theNum stringByAppendingString:@"1"];
    [self display];
}
- (IBAction)presstwo:(id)sender {
    theNum = [theNum stringByAppendingString:@"2"];
    [self display];
}
- (IBAction)pressthree:(id)sender {
    theNum = [theNum stringByAppendingString:@"3"];
    [self display];
}
- (IBAction)pressfour:(id)sender {
    theNum = [theNum stringByAppendingString:@"4"];
    [self display];
}
- (IBAction)pressfive:(id)sender {
    theNum = [theNum stringByAppendingString:@"5"];
    [self display];
}
- (IBAction)presssix:(id)sender {
    theNum = [theNum stringByAppendingString:@"6"];
    [self display];
}
- (IBAction)pressseven:(id)sender {
    theNum = [theNum stringByAppendingString:@"7"];
    [self display];
}
- (IBAction)presseight:(id)sender {
    theNum = [theNum stringByAppendingString:@"8"];
    [self display];
}
- (IBAction)pressnine:(id)sender {
    theNum = [theNum stringByAppendingString:@"9"];
    [self display];
}




@end
