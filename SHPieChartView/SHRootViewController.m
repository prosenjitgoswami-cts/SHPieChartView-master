

#import "SHRootViewController.h"
#import "CustomPieChartVIew.h"
#import "CircularPickerView.h"

#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#import "BIZCircularProgressView.h"

@interface SHRootViewController ()
@property (nonatomic, strong) BIZProgressViewHandler *progressViewHandlerForCode;

@end

@implementation SHRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (UIView *)pieChart:(CGFloat)height width:(CGFloat)width {
    
    
    UIView *contaonerView = [UIView new];
    contaonerView.backgroundColor = [UIColor lightGrayColor];
    contaonerView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:contaonerView];
    
    NSDictionary *metrics = @{@"width": @(width),
                              @"height": @(height),
                              };
    
    NSDictionary *_views = @{@"contaonerView":contaonerView,
                             };
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[contaonerView(width)]" options:0 metrics:metrics views:_views]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[contaonerView(height)]" options:0 metrics:nil views:_views]];
    
    
    {
        CustomPieChartVIew *concentricPieChart = [CustomPieChartVIew new];
        concentricPieChart.translatesAutoresizingMaskIntoConstraints = NO;
        concentricPieChart.chartBackgroundColor = UIColorFromRGB(0xFAFAFA);
        
        concentricPieChart.isConcentric = YES;
        concentricPieChart.concentricRadius = 90;
        concentricPieChart.concentricColor = [UIColor lightGrayColor];//UIColorFromRGB(0x54525C);
        
        [concentricPieChart addAngleValue:1 andColor:[UIColor greenColor]];
        [concentricPieChart addAngleValue:0.80 andColor:[UIColor purpleColor]];
        
        [contaonerView addSubview:concentricPieChart];
        
        NSDictionary *piChartViews = @{@"concentricPieChart" : concentricPieChart};
        
        [contaonerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[concentricPieChart]|" options:0 metrics:nil views:piChartViews]];
        [contaonerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[concentricPieChart]|" options:0 metrics:nil views:piChartViews]];
        
    }
    return contaonerView;
}
- (void)vie_wDidLoad
{
    [super viewDidLoad];
    
    //   BIZCircularProgressView *circularProgressViewForCode = [[BIZCircularProgressView alloc] initWithFrame:CGRectMake(100, 100, 150, 150)];
    //    [self.view addSubview:circularProgressViewForCode];
    //    //Customize
    //    circularProgressViewForCode.progressLineColor = [UIColor blackColor];
    //    circularProgressViewForCode.circleBackgroundColor = [UIColor yellowColor];
    //    circularProgressViewForCode.progressLineWidth = 5;
    //    circularProgressViewForCode.textLabel.textColor = [UIColor blackColor];
    //    circularProgressViewForCode.textLabel.font = [UIFont boldSystemFontOfSize:25];
    //   self.progressViewHandlerForCode = [[BIZProgressViewHandler alloc] initWithProgressView:circularProgressViewForCode minValue:0 maxValue:1];return;
    
    
    UIView *contaonerView = [UIView new];
    contaonerView.backgroundColor = [UIColor lightGrayColor];
    contaonerView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:contaonerView];
    NSDictionary *_views = @{@"contaonerView": contaonerView,
                             };
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-60-[contaonerView(200)]" options:0 metrics:nil views:_views]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[contaonerView(200)]" options:0 metrics:nil views:_views]];
    
    
    {
        CustomPieChartVIew *concentricPieChart = [CustomPieChartVIew new];
        concentricPieChart.translatesAutoresizingMaskIntoConstraints = NO;
        concentricPieChart.chartBackgroundColor = UIColorFromRGB(0xFAFAFA);
        
        concentricPieChart.isConcentric = YES;
        concentricPieChart.concentricRadius = 90;
        concentricPieChart.concentricColor = [UIColor lightGrayColor];//UIColorFromRGB(0x54525C);
        
        [concentricPieChart addAngleValue:1 andColor:[UIColor greenColor]];
        [concentricPieChart addAngleValue:0.80 andColor:[UIColor purpleColor]];
        
        [contaonerView addSubview:concentricPieChart];
        
        NSDictionary *piChartViews = @{@"concentricPieChart" : concentricPieChart};
        
        [contaonerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[concentricPieChart]|" options:0 metrics:nil views:piChartViews]];
        [contaonerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[concentricPieChart]|" options:0 metrics:nil views:piChartViews]];
        
    }
    
    {
        CustomPieChartVIew *concentricPieChart = [CustomPieChartVIew new];
        concentricPieChart.translatesAutoresizingMaskIntoConstraints = NO;
        concentricPieChart.chartBackgroundColor = UIColorFromRGB(0xFAFAFA);
        
        concentricPieChart.isConcentric = YES;
        concentricPieChart.concentricRadius = 90;
        concentricPieChart.concentricColor = [UIColor lightGrayColor];//UIColorFromRGB(0x54525C);
        
        [concentricPieChart addAngleValue:1 andColor:[UIColor greenColor]];
        [concentricPieChart addAngleValue:0.80 andColor:[UIColor purpleColor]];
        
        [contaonerView addSubview:concentricPieChart];
        
        NSDictionary *piChartViews = @{@"concentricPieChart" : concentricPieChart};
        
        [contaonerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|10-[concentricPieChart]|" options:0 metrics:nil views:piChartViews]];
        [contaonerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[concentricPieChart]|" options:0 metrics:nil views:piChartViews]];
        
    }
    
    //    {
    //        CustomPieChartVIew *concentricPieChart2 = [CustomPieChartVIew new];
    //        concentricPieChart2.translatesAutoresizingMaskIntoConstraints = NO;
    //        concentricPieChart2.chartBackgroundColor = UIColorFromRGB(0xFAFAFA);
    //
    //        concentricPieChart2.isConcentric = YES;
    //        concentricPieChart2.concentricRadius = 90;
    //        concentricPieChart2.concentricColor = [UIColor redColor];//UIColorFromRGB(0x54525C);
    //
    //        [concentricPieChart2 addAngleValue:1 andColor:[UIColor greenColor]];
    //        [concentricPieChart2 addAngleValue:0.80 andColor:[UIColor purpleColor]];
    //
    //        [contaonerView addSubview:concentricPieChart2];
    //
    //        NSDictionary *piChartViews2 = @{@"concentricPieChart2" : concentricPieChart2};
    //
    //        [contaonerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[concentricPieChart2(100)]" options:0 metrics:nil views:piChartViews2]];
    //        [contaonerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-50-[concentricPieChart2(100)]" options:0 metrics:nil views:piChartViews2]];
    //
    //    }
    
    return;
    
    UIView *innerView = [UIView new];
    innerView.backgroundColor = [UIColor yellowColor];
    innerView.translatesAutoresizingMaskIntoConstraints = NO;
    [contaonerView addSubview:innerView];
    
    NSDictionary *views = @{@"contaonerView": contaonerView,
                            @"innerView" : innerView};
    
    //    [contaonerView addConstraint:[NSLayoutConstraint constraintWithItem:innerView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:contaonerView attribute:NSLayoutAttributeWidth multiplier:0.5 constant:0]];
    //        [contaonerView addConstraint:[NSLayoutConstraint constraintWithItem:innerView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:contaonerView attribute:NSLayoutAttributeHeight multiplier:0.5 constant:0]];
    
    [contaonerView addConstraint:[NSLayoutConstraint constraintWithItem:innerView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:contaonerView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    [contaonerView addConstraint:[NSLayoutConstraint constraintWithItem:innerView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:contaonerView attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    
    
    {
        
        UIImageView *rankImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30, 32)];
        rankImageView.backgroundColor = [UIColor redColor];
        rankImageView.translatesAutoresizingMaskIntoConstraints = NO;
        [innerView addSubview:rankImageView];
        
        UILabel * amountLabel= [UILabel new];
        amountLabel.backgroundColor = [UIColor redColor];
        amountLabel.translatesAutoresizingMaskIntoConstraints = NO;
        [innerView addSubview:amountLabel];
        
        
        UILabel * priseLabel= [UILabel new];
        priseLabel.backgroundColor = [UIColor redColor];
        priseLabel.translatesAutoresizingMaskIntoConstraints = NO;
        [innerView addSubview:priseLabel];
        
        NSDictionary *innerViews = @{@"rankImageView" : rankImageView,
                                     @"amountLabel": amountLabel,
                                     @"priseLabel": priseLabel};
        
        [innerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[rankImageView(50)]" options:0 metrics:nil views:innerViews]];
        [innerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[amountLabel]|" options:0 metrics:nil views:innerViews]];
        [innerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[priseLabel]|" options:0 metrics:nil views:innerViews]];
        
        
        [innerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-10-[rankImageView(50)]-[amountLabel(21)]-1-[priseLabel(21)]" options:0 metrics:nil views:innerViews]];
        
        [innerView addConstraint:[NSLayoutConstraint constraintWithItem:rankImageView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:innerView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
        
        [innerView addConstraint:[NSLayoutConstraint constraintWithItem:rankImageView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:innerView attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    }
    
    
    
    
    {
        CustomPieChartVIew *concentricPieChart = [CustomPieChartVIew new];
        concentricPieChart.translatesAutoresizingMaskIntoConstraints = NO;
        concentricPieChart.chartBackgroundColor = UIColorFromRGB(0xFAFAFA);
        
        concentricPieChart.isConcentric = YES;
        concentricPieChart.concentricRadius = 80;
        concentricPieChart.concentricColor = [UIColor clearColor];//UIColorFromRGB(0x54525C);
        
        [concentricPieChart addAngleValue:0.40 andColor:[UIColor purpleColor]];
        
        [contaonerView addSubview:concentricPieChart];
        
        NSDictionary *piChartViews = @{@"concentricPieChart" : concentricPieChart};
        
        [contaonerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[concentricPieChart(50)]" options:0 metrics:nil views:piChartViews]];
        [contaonerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[concentricPieChart(50)]" options:0 metrics:nil views:piChartViews]];
        
    }
    //  SHPieChartView *normalPieChart = [[SHPieChartView alloc] initWithFrame:CGRectMake(10, 230, 150, 150)];
    ////
    ////     [ concentricPieChart addAngleValue:0.40 andColor:[UIColor redColor];
    ////  [normalPieChart addAngleValue:0.20 andClolor:[UIColor greenColor]];
    ////  [normalPieChart addAngleValue:0.30 andClolor:[UIColor blueColor]];
    ////  [normalPieChart addAngleValue:0.10 andClolor:[UIColor orangeColor]];
    //
    //  [self.view addSubview:normalPieChart];
    //
    //  SHPieChartView *halfChart = [[SHPieChartView alloc] initWithFrame:CGRectMake(10, 400, 100, 100)];
    // // [halfChart addAngleValue:0.40 andClolor:UIColorFromRGB(0x3C60A3)];
    //
    //  [self.view addSubview:halfChart];
    
    
    
}


- (void)createCircularPieChart:(UIView *)containerView
                       diameter:(CGFloat )diameter
                   lineBGColor:(UIColor *)lineBGColor
                lineStokeColor:(UIColor *)lineStokeColor
                     lineWidth:(CGFloat)lineWidth
{
    
    CircularPickerView *circularPickerView = [CircularPickerView new];
    circularPickerView.lineColor = lineStokeColor;
    circularPickerView.lineWidth = lineWidth;
    circularPickerView.bgColor = lineBGColor;
    circularPickerView.minValue = 0;
    circularPickerView.maxValue = 100;
    circularPickerView.step = 1;
    circularPickerView.backgroundColor = [UIColor clearColor];
    circularPickerView.translatesAutoresizingMaskIntoConstraints = NO;
    [containerView addSubview:circularPickerView];
    NSDictionary *_views = @{@"circularPickerView": circularPickerView,
                             };
    NSDictionary *metrics = @{@"diameter" : @(diameter)};
    
    [containerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[circularPickerView(diameter)]" options:0 metrics:metrics views:_views]];
    [containerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[circularPickerView(diameter)]" options:0 metrics:metrics views:_views]];
    
    [containerView addConstraint:[NSLayoutConstraint constraintWithItem:circularPickerView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:containerView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    [containerView addConstraint:[NSLayoutConstraint constraintWithItem:circularPickerView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:containerView attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
}

- (UIView *)createInerView:(UIView *)containerView
                   metrics:(NSDictionary *)metrics
{
    
    UIView *innerView = [UIView new];
    innerView.backgroundColor = [UIColor brownColor];
    innerView.translatesAutoresizingMaskIntoConstraints = NO;
    [containerView addSubview:innerView];
    
    NSDictionary *views = @{@"contaonerView": containerView,
                            @"innerView" : innerView};
    
    [containerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[innerView(innerViewWidth)]" options:0 metrics:metrics views:views]];
    
    [containerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-originYOnRactangleView-[innerView(innerViewHeight)]" options:0 metrics:metrics views:views]];
    
    [containerView addConstraint:[NSLayoutConstraint constraintWithItem:innerView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:containerView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];

    {
        
        UIImageView *rankImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30, 32)];
        rankImageView.backgroundColor = [UIColor blueColor];
        rankImageView.translatesAutoresizingMaskIntoConstraints = NO;
        [innerView addSubview:rankImageView];
        
        UILabel * amountLabel= [UILabel new];
        amountLabel.textAlignment = NSTextAlignmentCenter;
        amountLabel.text = @"Test";amountLabel.font = [UIFont systemFontOfSize:15.0f];
        amountLabel.backgroundColor = [UIColor clearColor];
        amountLabel.translatesAutoresizingMaskIntoConstraints = NO;
        [innerView addSubview:amountLabel];
        
        
        UILabel * priseLabel= [UILabel new];
        priseLabel.textAlignment = NSTextAlignmentCenter;
        
        priseLabel.backgroundColor = [UIColor clearColor];
        priseLabel.text = @"$100009999.00";
        priseLabel.font = [UIFont systemFontOfSize:15.0f];
        priseLabel.translatesAutoresizingMaskIntoConstraints = NO;
        [innerView addSubview:priseLabel];
        
        NSDictionary *innerViews = @{@"rankImageView" : rankImageView,
                                     @"amountLabel": amountLabel,
                                     @"priseLabel": priseLabel};
        
        [innerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[rankImageView(45)]" options:0 metrics:nil views:innerViews]];
        [innerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[amountLabel]|" options:0 metrics:nil views:innerViews]];
        [innerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[priseLabel]|" options:0 metrics:nil views:innerViews]];
        
        
        [innerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[rankImageView(70)]-3-[amountLabel]-1-[priseLabel]" options:0 metrics:nil views:innerViews]];
        
        [innerView addConstraint:[NSLayoutConstraint constraintWithItem:rankImageView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:innerView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
        
        [innerView addConstraint:[NSLayoutConstraint constraintWithItem:rankImageView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:innerView attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    }
    
    return innerView;
}

- (UIView *)createUIWithOuterDiameter:(CGFloat) height lineWidth:(CGFloat)lineWidth
{
    UIView *containerView = [UIView new];
    containerView.backgroundColor = [UIColor clearColor];
    containerView.translatesAutoresizingMaskIntoConstraints = NO;

    CGFloat outerDiameter = height;
    CGFloat innerDiameter =outerDiameter *.8;
    
    CGFloat originYOnRactangleView  = 0 ;
    
    CGFloat  innerViewWidth  = innerDiameter *.7;
    innerViewWidth = innerViewWidth - (lineWidth*2);
    
    CGFloat innerViewHeight = sqrt(pow(innerDiameter - (lineWidth *2), 2) - pow(innerViewWidth, 2));
    
    innerViewHeight -= lineWidth;
    innerViewWidth -= lineWidth;
    
    originYOnRactangleView = (outerDiameter/2) - (innerViewHeight/2);
    NSDictionary *metrics = @{@"radius": @(outerDiameter),
                              @"outerRadius": @(outerDiameter),
                              @"innerRadius": @(innerDiameter),
                              @"innerViewHeight": @(innerViewHeight),
                              @"innerViewWidth": @(innerViewWidth),
                              @"originYOnRactangleView" : @(originYOnRactangleView)};
    
    
    [self createCircularPieChart:containerView
                        diameter:outerDiameter
                     lineBGColor:[UIColor greenColor]
                  lineStokeColor:[UIColor purpleColor]
                       lineWidth:lineWidth];
    
    [self createCircularPieChart:containerView
                        diameter:innerDiameter
                     lineBGColor:[UIColor greenColor]
                  lineStokeColor:[UIColor purpleColor]
                       lineWidth:lineWidth];
    
    
    [self createInerView:containerView
                 metrics:metrics];
    
    return containerView;
    
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    UIView *containerView = [self createUIWithOuterDiameter:250 lineWidth:5];
    [self.view addSubview:containerView];
    NSDictionary *_views = @{@"contaonerView": containerView,
                             };
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[contaonerView(250)]|" options:0 metrics:nil views:_views]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[contaonerView(250)]|" options:0 metrics:nil views:_views]];
    
    //    {
    //    UIView *contaonerView = [UIView new];
    //    contaonerView.backgroundColor = [UIColor lightGrayColor];
    //    contaonerView.translatesAutoresizingMaskIntoConstraints = NO;
    //    [self.view addSubview:contaonerView];
    //    NSDictionary *_views = @{@"contaonerView": contaonerView,
    //                             };
    //    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-60-[contaonerView(200)]" options:0 metrics:nil views:_views]];
    //
    //    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[contaonerView(200)]" options:0 metrics:nil views:_views]];
    //
    //
    //    {
    //        CustomPieChartVIew *concentricPieChart = [CustomPieChartVIew new];
    //        concentricPieChart.translatesAutoresizingMaskIntoConstraints = NO;
    //        concentricPieChart.chartBackgroundColor = UIColorFromRGB(0xFAFAFA);
    //
    //        concentricPieChart.isConcentric = YES;
    //        concentricPieChart.concentricRadius = 90;
    //        concentricPieChart.concentricColor = [UIColor lightGrayColor];//UIColorFromRGB(0x54525C);
    //
    //        [concentricPieChart addAngleValue:1 andColor:[UIColor greenColor]];
    //        [concentricPieChart addAngleValue:0.80 andColor:[UIColor purpleColor]];
    //
    //        [contaonerView addSubview:concentricPieChart];
    //
    //        NSDictionary *piChartViews = @{@"concentricPieChart" : concentricPieChart};
    //
    //        [contaonerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[concentricPieChart]|" options:0 metrics:nil views:piChartViews]];
    //        [contaonerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[concentricPieChart]|" options:0 metrics:nil views:piChartViews]];
    //
    //    }
    //
    //    {
    //        CustomPieChartVIew *concentricPieChart = [CustomPieChartVIew new];
    //        concentricPieChart.translatesAutoresizingMaskIntoConstraints = NO;
    //        concentricPieChart.chartBackgroundColor = UIColorFromRGB(0xFAFAFA);
    //
    //        concentricPieChart.isConcentric = YES;
    //        concentricPieChart.concentricRadius = 90;
    //        concentricPieChart.concentricColor = [UIColor lightGrayColor];//UIColorFromRGB(0x54525C);
    //
    //        [concentricPieChart addAngleValue:1 andColor:[UIColor greenColor]];
    //        [concentricPieChart addAngleValue:0.80 andColor:[UIColor purpleColor]];
    //
    //        [contaonerView addSubview:concentricPieChart];
    //
    //        NSDictionary *piChartViews = @{@"concentricPieChart" : concentricPieChart};
    //
    //        [contaonerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|10-[concentricPieChart]|" options:0 metrics:nil views:piChartViews]];
    //        [contaonerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[concentricPieChart]|" options:0 metrics:nil views:piChartViews]];
    //
    //    }
    
    //    {
    //        CustomPieChartVIew *concentricPieChart2 = [CustomPieChartVIew new];
    //        concentricPieChart2.translatesAutoresizingMaskIntoConstraints = NO;
    //        concentricPieChart2.chartBackgroundColor = UIColorFromRGB(0xFAFAFA);
    //
    //        concentricPieChart2.isConcentric = YES;
    //        concentricPieChart2.concentricRadius = 90;
    //        concentricPieChart2.concentricColor = [UIColor redColor];//UIColorFromRGB(0x54525C);
    //
    //        [concentricPieChart2 addAngleValue:1 andColor:[UIColor greenColor]];
    //        [concentricPieChart2 addAngleValue:0.80 andColor:[UIColor purpleColor]];
    //
    //        [contaonerView addSubview:concentricPieChart2];
    //
    //        NSDictionary *piChartViews2 = @{@"concentricPieChart2" : concentricPieChart2};
    //
    //        [contaonerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[concentricPieChart2(100)]" options:0 metrics:nil views:piChartViews2]];
    //        [contaonerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-50-[concentricPieChart2(100)]" options:0 metrics:nil views:piChartViews2]];
    //
    //    }
    
    return;
    
    UIView *innerView = [UIView new];
    innerView.backgroundColor = [UIColor yellowColor];
    innerView.translatesAutoresizingMaskIntoConstraints = NO;
    [containerView addSubview:innerView];
    
    NSDictionary *views = @{@"contaonerView": containerView,
                            @"innerView" : innerView};
    
    //    [contaonerView addConstraint:[NSLayoutConstraint constraintWithItem:innerView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:contaonerView attribute:NSLayoutAttributeWidth multiplier:0.5 constant:0]];
    //        [contaonerView addConstraint:[NSLayoutConstraint constraintWithItem:innerView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:contaonerView attribute:NSLayoutAttributeHeight multiplier:0.5 constant:0]];
    
    [containerView addConstraint:[NSLayoutConstraint constraintWithItem:innerView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:containerView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    [containerView addConstraint:[NSLayoutConstraint constraintWithItem:innerView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:containerView attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    
    
    
    
    
    
    
    {
        CustomPieChartVIew *concentricPieChart = [CustomPieChartVIew new];
        concentricPieChart.translatesAutoresizingMaskIntoConstraints = NO;
        concentricPieChart.chartBackgroundColor = UIColorFromRGB(0xFAFAFA);
        
        concentricPieChart.isConcentric = YES;
        concentricPieChart.concentricRadius = 80;
        concentricPieChart.concentricColor = [UIColor clearColor];//UIColorFromRGB(0x54525C);
        
        [concentricPieChart addAngleValue:0.40 andColor:[UIColor purpleColor]];
        
        [containerView addSubview:concentricPieChart];
        
        NSDictionary *piChartViews = @{@"concentricPieChart" : concentricPieChart};
        
        [containerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[concentricPieChart(50)]" options:0 metrics:nil views:piChartViews]];
        [containerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[concentricPieChart(50)]" options:0 metrics:nil views:piChartViews]];
        
    }
    //  SHPieChartView *normalPieChart = [[SHPieChartView alloc] initWithFrame:CGRectMake(10, 230, 150, 150)];
    ////
    ////     [ concentricPieChart addAngleValue:0.40 andColor:[UIColor redColor];
    ////  [normalPieChart addAngleValue:0.20 andClolor:[UIColor greenColor]];
    ////  [normalPieChart addAngleValue:0.30 andClolor:[UIColor blueColor]];
    ////  [normalPieChart addAngleValue:0.10 andClolor:[UIColor orangeColor]];
    //  
    //  [self.view addSubview:normalPieChart];
    //
    //  SHPieChartView *halfChart = [[SHPieChartView alloc] initWithFrame:CGRectMake(10, 400, 100, 100)];
    // // [halfChart addAngleValue:0.40 andClolor:UIColorFromRGB(0x3C60A3)];
    //  
    //  [self.view addSubview:halfChart];
    
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
