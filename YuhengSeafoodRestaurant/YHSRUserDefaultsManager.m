#import "YHSRUserDefaultsManager.h"
static YHSRUserDefaultsManager *_manager;
@implementation YHSRUserDefaultsManager
+ (instancetype)shareManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manager = [[YHSRUserDefaultsManager alloc] init];
        _manager.homeArr = [NSMutableArray array];
        _manager.goodsArr = [NSMutableArray array];
        _manager.billArr = [NSMutableArray array];
        _manager.messageArr = [NSMutableArray array];
    });
    return _manager;
}
- (void)setIsLogin:(BOOL)isLogin
{
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithBool:isLogin] forKey:@"isLogin"];
NSDictionary * YHSR_improvised;
if (YHSR_improvised) {
 YHSR_improvised = nil;
}
NSArray * YHSR_transcribe;
if (YHSR_transcribe) {
 YHSR_transcribe = nil;
}
}
- (BOOL)isLogin
{
    return [[[NSUserDefaults standardUserDefaults] objectForKey:@"isLogin"] boolValue];
NSDictionary * YHSR_improvised;
if (YHSR_improvised) {
 YHSR_improvised = nil;
}
NSArray * YHSR_transcribe;
if (YHSR_transcribe) {
 YHSR_transcribe = nil;
}
}
- (void)setHeadStr:(NSString *)headStr
{
    [[NSUserDefaults standardUserDefaults] setObject:headStr forKey:@"headStr"];
NSDictionary * YHSR_improvised;
if (YHSR_improvised) {
 YHSR_improvised = nil;
}
NSArray * YHSR_transcribe;
if (YHSR_transcribe) {
 YHSR_transcribe = nil;
}
}
- (NSString *)headStr
{
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"headStr"];
NSDictionary * YHSR_improvised;
if (YHSR_improvised) {
 YHSR_improvised = nil;
}
NSArray * YHSR_transcribe;
if (YHSR_transcribe) {
 YHSR_transcribe = nil;
}
}
- (void)setHomeArr:(NSMutableArray *)homeArr
{
    [[NSUserDefaults standardUserDefaults] setObject:homeArr forKey:@"homeArr"];
NSDictionary * YHSR_improvised;
if (YHSR_improvised) {
 YHSR_improvised = nil;
}
NSArray * YHSR_transcribe;
if (YHSR_transcribe) {
 YHSR_transcribe = nil;
}
}
- (NSMutableArray *)homeArr
{
    NSMutableArray *arr = [NSMutableArray array];
    arr = [[NSUserDefaults standardUserDefaults] objectForKey:@"homeArr"];
    if (arr.count == 0) {
        NSDictionary *dic1 = @{
                               @"name":@"Mr. Li",
                               @"phone":@"18787823142",
                               @"address":@"Xiamen Software Park Phase II",
                               @"note":@"Less put pepper",
                               @"number":@"4",
                               @"price":@"276",
                               @"orderNumber":@"20200825001",
                               @"goodsName":@"Green vegetables, rice",
                               @"time":@"2020.08.23.05 15:20",
                               @"idStr":@"1",
                               @"type":@"Don't answer sheet",
                               };
        NSDictionary *dic2 = @{
                               @"name":@"LAN",
                               @"phone":@"19024567890",
                               @"address":@"Xiang Lu Huacheng Lake Phase",
                               @"note":@"Don't Onions",
                               @"number":@"3",
                               @"price":@"190",
                               @"orderNumber":@"20200825002",
                               @"goodsName":@"Rice, dried frog",
                               @"time":@"2020.08.23.05 12:10",
                               @"idStr":@"2",
                               @"type":@"Don't answer sheet",
                               };
        NSDictionary *dic3 = @{
                               @"name":@"Li Zhonghai",
                               @"phone":@"19023123111",
                               @"address":@"Siming Software Park",
                               @"note":@"Add parsley",
                               @"number":@"4",
                               @"price":@"240",
                               @"orderNumber":@"20200825003",
                               @"goodsName":@"Boiled fish and rice",
                               @"time":@"2020.08.23.07 11:50",
                               @"idStr":@"3",
                               @"type":@"Don't answer sheet",
                               };
        NSDictionary *dic4 = @{
                               @"name":@"haixing",
                               @"phone":@"18726763172",
                               @"address":@"Siming District, Xiamen City",
                               @"note":@"Slightly spicy",
                               @"number":@"3",
                               @"price":@"130",
                               @"orderNumber":@"20200825004",
                               @"goodsName":@"Stir-fried beef",
                               @"time":@"2020.08.23.07 12:30",
                               @"idStr":@"4",
                               @"type":@"Don't answer sheet",
                               };
        NSDictionary *dic5 = @{
                               @"name":@"lakers",
                               @"phone":@"10923123892",
                               @"address":@"510, Building 8, Software Park Ii",
                               @"note":@"Four portions of rice",
                               @"number":@"5",
                               @"price":@"391",
                               @"orderNumber":@"20200825005",
                               @"goodsName":@"Boiled three fresh, rice",
                               @"time":@"2020.08.23.08 11:35",
                               @"idStr":@"5",
                               @"type":@"Don't answer sheet",
                               };
        NSDictionary *dic6 = @{
                               @"name":@"Howard",
                               @"phone":@"17678989092",
                               @"address":@"Siming District, Xiamen City",
                               @"note":@"Don't hot",
                               @"number":@"3",
                               @"price":@"191",
                               @"orderNumber":@"20200825006",
                               @"goodsName":@"Rice and seaweed soup",
                               @"time":@"2020.08.23.08 11:59",
                               @"idStr":@"6",
                               @"type":@"Don't answer sheet",
                               };
        NSDictionary *dic7 = @{
                               @"name":@"Little milan",
                               @"phone":@"18928989031",
                               @"address":@"Baolong, Siming District",
                               @"note":@"Don't eat Onions!",
                               @"number":@"3",
                               @"price":@"151",
                               @"orderNumber":@"20200825007",
                               @"goodsName":@"Rice and meatball soup",
                               @"time":@"2020.08.23.08 11:39",
                               @"idStr":@"7",
                               @"type":@"Don't answer sheet",
                               };
        NSDictionary *dic8 = @{
                               @"name":@"wei",
                               @"phone":@"17629093141",
                               @"address":@"CAI Tang Square, Siming District",
                               @"note":@"More hot",
                               @"number":@"3",
                               @"price":@"161",
                               @"orderNumber":@"20200825008",
                               @"goodsName":@"Rice, minced meat, eggplant",
                               @"time":@"2020.08.23.08 11:40",
                               @"idStr":@"8",
                               @"type":@"Don't answer sheet",
                               };
        NSDictionary *dic9 = @{
                               @"name":@"Mr Zheng",
                               @"phone":@"18923182931",
                               @"address":@"Huli District Memorial Hall",
                               @"note":@"无",
                               @"number":@"4",
                               @"price":@"153",
                               @"orderNumber":@"20200825009",
                               @"goodsName":@"Rice and nori meatball soup",
                               @"time":@"2020.08.23.09 12:00",
                               @"idStr":@"9",
                               @"type":@"Don't answer sheet",
                               };
        NSDictionary *dic10 = @{
                               @"name":@"Xiao Chen",
                               @"phone":@"10923147867",
                               @"address":@"Huli district colorful space",
                               @"note":@"无",
                               @"number":@"3",
                               @"price":@"119",
                               @"orderNumber":@"20200825010",
                               @"goodsName":@"Rice, double - cooked pork",
                               @"time":@"2020.08.23.09 12:30",
                               @"idStr":@"10",
                               @"type":@"Don't answer sheet",
                               };
        NSDictionary *dic11 = @{
                                @"name":@"Xiao wu",
                                @"phone":@"18920931567",
                                @"address":@"City Lake district xiangyang",
                                @"note":@"spicy",
                                @"number":@"1",
                                @"price":@"55",
                                @"orderNumber":@"20200825011",
                                @"goodsName":@"sushi",
                                @"time":@"2020.08.23.09 12:10",
                                @"idStr":@"11",
                                @"type":@"Don't answer sheet",
                                };
        NSDictionary *dic12 = @{
                                @"name":@"Chen open",
                                @"phone":@"19820931561",
                                @"address":@"Gaoqi Railway Station, Huli District",
                                @"note":@"spicy",
                                @"number":@"1",
                                @"price":@"35",
                                @"orderNumber":@"20200825012",
                                @"goodsName":@"Stinky tofu",
                                @"time":@"2020.08.23.10 11:13",
                                @"idStr":@"12",
                                @"type":@"Don't answer sheet",
                                };
        [[NSUserDefaults standardUserDefaults] setObject:@[dic1,dic2,dic3,dic4,dic5,dic6,dic7,dic8,dic9,dic10,dic12,dic11] forKey:@"homeArr"];
    }
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"homeArr"];
NSDictionary * YHSR_improvised;
if (YHSR_improvised) {
 YHSR_improvised = nil;
}
NSArray * YHSR_transcribe;
if (YHSR_transcribe) {
 YHSR_transcribe = nil;
}
}
- (void)setGoodsArr:(NSMutableArray *)goodsArr
{
    [[NSUserDefaults standardUserDefaults] setObject:goodsArr forKey:@"goodsArr"];
NSDictionary * YHSR_improvised;
if (YHSR_improvised) {
 YHSR_improvised = nil;
}
NSArray * YHSR_transcribe;
if (YHSR_transcribe) {
 YHSR_transcribe = nil;
}
}
- (NSMutableArray *)goodsArr
{
    NSMutableArray *arr = [NSMutableArray array];
    arr = [[NSUserDefaults standardUserDefaults] objectForKey:@"goodsArr"];
    if (arr.count == 0) {
        NSDictionary *dic2 = @{
                               @"goodsImg":@"羊肉串",
                               @"goodsName":@"Mutton string",
                               @"number":@"50",
                               @"price":@"99",
                               @"type":@"shelves",
                               @"describe":@"Mongolian lamb",
                               @"idStr":@"1",
                               @"isHttp":@(NO),
                               };
        NSDictionary *dic3 = @{
                               @"goodsImg":@"三明治",
                               @"goodsName":@"Sandwich",
                               @"number":@"90",
                               @"price":@"35",
                               @"type":@"shelves",
                               @"describe":@"Bread and chicken",
                               @"idStr":@"2",
                               @"isHttp":@(NO),
                               };
        NSDictionary *dic4 = @{
                               @"goodsImg":@"臭豆腐",
                               @"goodsName":@"Stinky tofu",
                               @"number":@"70",
                               @"price":@"35",
                               @"type":@"shelves",
                               @"describe":@"tofu",
                               @"idStr":@"3",
                               @"isHttp":@(NO),
                               };
        NSDictionary *dic5 = @{
                               @"goodsImg":@"寿司",
                               @"goodsName":@"sushi",
                               @"number":@"90",
                               @"price":@"55",
                               @"type":@"shelves",
                               @"describe":@"Seaweed, glutinous rice, sausage",
                               @"idStr":@"4",
                               @"isHttp":@(NO),
                               };
        NSDictionary *dic6 = @{
                               @"goodsImg":@"杂粮煎饼",
                               @"goodsName":@"Coarse pancake",
                               @"number":@"100",
                               @"price":@"20",
                               @"type":@"shelves",
                               @"describe":@"Coarse pancake",
                               @"idStr":@"5",
                               @"isHttp":@(NO),
                               };
        NSDictionary *dic7 = @{
                               @"goodsImg":@"牛排",
                               @"goodsName":@"Steak",
                               @"number":@"30",
                               @"price":@"79",
                               @"type":@"shelves",
                               @"describe":@"beef",
                               @"idStr":@"6",
                               @"isHttp":@(NO),
                               };
        NSDictionary *dic8 = @{
                               @"goodsImg":@"酱香排骨",
                               @"goodsName":@"Fried Spare Ribs",
                               @"number":@"90",
                               @"price":@"109",
                               @"type":@"shelves",
                               @"describe":@"Fried Spare Ribs",
                               @"idStr":@"7",
                               @"isHttp":@(NO),
                               };
        NSDictionary *dic9 = @{
                               @"goodsImg":@"酸菜鱼",
                               @"goodsName":@"Pickled fish",
                               @"number":@"85",
                               @"price":@"159",
                               @"type":@"shelves",
                               @"describe":@"fish",
                               @"idStr":@"8",
                               @"isHttp":@(NO),
                               };
        NSDictionary *dic10 = @{
                               @"goodsImg":@"小龙虾",
                               @"goodsName":@"Overlord shrimp",
                               @"number":@"190",
                               @"price":@"299",
                               @"type":@"shelves",
                               @"describe":@"shrimp",
                               @"idStr":@"9",
                               @"isHttp":@(NO),
                               };
        NSDictionary *dic11 = @{
                               @"goodsImg":@"烤乳猪",
                               @"goodsName":@"Roast Suckling pig",
                               @"number":@"83",
                               @"price":@"259",
                               @"type":@"shelves",
                               @"describe":@"pig",
                               @"idStr":@"10",
                               @"isHttp":@(NO),
                               };
        NSDictionary *dic12 = @{
                               @"goodsImg":@"水煮肉片",
                               @"goodsName":@"Boiled meat",
                               @"number":@"109",
                               @"price":@"95",
                               @"type":@"shelves",
                               @"describe":@"meat",
                               @"idStr":@"11",
                               @"isHttp":@(NO),
                               };
        NSDictionary *dic13 = @{
                               @"goodsImg":@"酱香鸭肉片",
                               @"goodsName":@"Duck meat slices",
                               @"number":@"130",
                               @"price":@"99",
                               @"type":@"shelves",
                               @"describe":@"Duck meat",
                               @"idStr":@"12",
                               @"isHttp":@(NO),
                               };
        NSDictionary *dic14 = @{
                               @"goodsImg":@"水煮面",
                               @"goodsName":@"Boiled noodles",
                               @"number":@"151",
                               @"price":@"50",
                               @"type":@"shelves",
                               @"describe":@"noodles",
                               @"idStr":@"13",
                               @"isHttp":@(NO),
                               };
        [[NSUserDefaults standardUserDefaults] setObject:@[dic2,dic3,dic4,dic5,dic6,dic7,dic8,dic9,dic10,dic11,dic12,dic13,dic14] forKey:@"goodsArr"];
    }
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"goodsArr"];
NSDictionary * YHSR_improvised;
if (YHSR_improvised) {
 YHSR_improvised = nil;
}
NSArray * YHSR_transcribe;
if (YHSR_transcribe) {
 YHSR_transcribe = nil;
}
}
- (void)setName:(NSString *)name
{
    [[NSUserDefaults standardUserDefaults] setObject:name forKey:@"name"];
NSDictionary * YHSR_improvised;
if (YHSR_improvised) {
 YHSR_improvised = nil;
}
NSArray * YHSR_transcribe;
if (YHSR_transcribe) {
 YHSR_transcribe = nil;
}
}
- (NSString *)name
{
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"name"];
NSDictionary * YHSR_improvised;
if (YHSR_improvised) {
 YHSR_improvised = nil;
}
NSArray * YHSR_transcribe;
if (YHSR_transcribe) {
 YHSR_transcribe = nil;
}
}
- (void)setAddress:(NSString *)address
{
    [[NSUserDefaults standardUserDefaults] setObject:address forKey:@"address"];
NSDictionary * YHSR_improvised;
if (YHSR_improvised) {
 YHSR_improvised = nil;
}
NSArray * YHSR_transcribe;
if (YHSR_transcribe) {
 YHSR_transcribe = nil;
}
}
- (NSString *)address
{
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"address"];
NSDictionary * YHSR_improvised;
if (YHSR_improvised) {
 YHSR_improvised = nil;
}
NSArray * YHSR_transcribe;
if (YHSR_transcribe) {
 YHSR_transcribe = nil;
}
}
- (void)setPhone:(NSString *)phone
{
    [[NSUserDefaults standardUserDefaults] setObject:phone forKey:@"phone"];
NSDictionary * YHSR_improvised;
if (YHSR_improvised) {
 YHSR_improvised = nil;
}
NSArray * YHSR_transcribe;
if (YHSR_transcribe) {
 YHSR_transcribe = nil;
}
}
- (NSString *)phone
{
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"phone"];
NSDictionary * YHSR_improvised;
if (YHSR_improvised) {
 YHSR_improvised = nil;
}
NSArray * YHSR_transcribe;
if (YHSR_transcribe) {
 YHSR_transcribe = nil;
}
}
- (void)setBillArr:(NSMutableArray *)billArr
{
    [[NSUserDefaults standardUserDefaults] setObject:billArr forKey:@"billArr"];
NSDictionary * YHSR_improvised;
if (YHSR_improvised) {
 YHSR_improvised = nil;
}
NSArray * YHSR_transcribe;
if (YHSR_transcribe) {
 YHSR_transcribe = nil;
}
}
- (NSMutableArray *)billArr
{
    NSMutableArray *arr = [NSMutableArray array];
    arr = [[NSUserDefaults standardUserDefaults] objectForKey:@"billArr"];
    if (arr.count == 0) {
        NSDictionary *dic1 = @{
                               @"goodsName":@"Braise a mushroom",
                               @"time":@"2020.08.23 10:30",
                               @"number":@"1",
                               @"price":@"30",
                               };
        NSDictionary *dic2 = @{
                               @"goodsName":@"Dry pot frog",
                               @"time":@"2020.08.23 10:45",
                               @"number":@"1",
                               @"price":@"90",
                               };
        NSDictionary *dic3 = @{
                               @"goodsName":@"Rice, vegetables",
                               @"time":@"2020.08.23 10:34",
                               @"number":@"2",
                               @"price":@"50",
                               };
        NSDictionary *dic4 = @{
                               @"goodsName":@"sushi",
                               @"time":@"2020.08.23 11:40",
                               @"number":@"2",
                               @"price":@"110",
                               };
        NSDictionary *dic5 = @{
                               @"goodsName":@"American steak",
                               @"time":@"2020.08.23 10:34",
                               @"number":@"1",
                               @"price":@"79",
                               };
        NSDictionary *dic6 = @{
                               @"goodsName":@"sandwich",
                               @"time":@"2020.08.23 11:30",
                               @"number":@"1",
                               @"price":@"35",
                               };
        NSDictionary *dic7 = @{
                               @"goodsName":@"Stinky tofu",
                               @"time":@"2020.08.23 11:50",
                               @"number":@"2",
                               @"price":@"70",
                               };
        NSDictionary *dic8 = @{
                               @"goodsName":@"Coarse pancake",
                               @"time":@"2020.08.23 12:00",
                               @"number":@"3",
                               @"price":@"60",
                               };
        NSDictionary *dic9 = @{
                               @"goodsName":@"Mutton string",
                               @"time":@"2020.08.23.04 10:50",
                               @"number":@"1",
                               @"price":@"99",
                               };
        NSDictionary *dic10 = @{
                               @"goodsName":@"Fried Spare Ribs",
                               @"time":@"2020.08.23.04 12:30",
                               @"number":@"2",
                               @"price":@"218",
                               };
        NSDictionary *dic11 = @{
                               @"goodsName":@"Pickled fish",
                               @"time":@"2020.08.23.04 11:55",
                               @"number":@"1",
                               @"price":@"159",
                               };
        NSDictionary *dic12 = @{
                               @"goodsName":@"Overlord shrimp",
                               @"time":@"2020.08.23.04 13:01",
                               @"number":@"1",
                               @"price":@"299",
                               };
        NSDictionary *dic13 = @{
                               @"goodsName":@"Roast Suckling pig",
                               @"time":@"2020.08.23.04 13:14",
                               @"number":@"1",
                               @"price":@"259",
                               };
        NSDictionary *dic14 = @{
                               @"goodsName":@"Sushi, sandwiches",
                               @"time":@"2020.08.23.05 12:30",
                               @"number":@"2",
                               @"price":@"90",
                               };
        [[NSUserDefaults standardUserDefaults] setObject:@[dic1,dic2,dic3,dic4,dic5,dic6,dic7,dic8,dic9,dic10,dic11,dic12,dic13,dic14] forKey:@"billArr"];
    }
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"billArr"];
NSDictionary * YHSR_improvised;
if (YHSR_improvised) {
 YHSR_improvised = nil;
}
NSArray * YHSR_transcribe;
if (YHSR_transcribe) {
 YHSR_transcribe = nil;
}
}
- (void)setMessageArr:(NSMutableArray *)messageArr
{
    [[NSUserDefaults standardUserDefaults] setObject:messageArr forKey:@"messageArr"];
NSDictionary * YHSR_improvised;
if (YHSR_improvised) {
 YHSR_improvised = nil;
}
NSArray * YHSR_transcribe;
if (YHSR_transcribe) {
 YHSR_transcribe = nil;
}
}
- (NSMutableArray *)messageArr
{
    NSMutableArray *arr = [NSMutableArray array];
    arr = [[NSUserDefaults standardUserDefaults] objectForKey:@"messageArr"];
    if (arr.count == 0) {
        NSDictionary *dic1 = @{
            @"titleStr":@"System informs",
            @"time":@"2020.08.23 09:30",
            @"contentStr":@"Dear users, finally wait for you!",
        };
        NSDictionary *dic2 = @{
            @"titleStr":@"Welcome to login",
            @"time":@"2020.08.23 16:00",
            @"contentStr":@"Dear users, welcome back!",
        };
        [[NSUserDefaults standardUserDefaults] setObject:@[dic1,dic2] forKey:@"messageArr"];
    }
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"messageArr"];
NSDictionary * YHSR_improvised;
if (YHSR_improvised) {
 YHSR_improvised = nil;
}
NSArray * YHSR_transcribe;
if (YHSR_transcribe) {
 YHSR_transcribe = nil;
}
}
@end
@interface YHSRfustian : NSObject
@end
@implementation YHSRfustian
- (NSDictionary *)plGetNSDictionaryWithYHSR_improvised:(NSDictionary *)YHSR_improvised {
  return YHSR_improvised;
}
- (NSArray *)plGetNSArrayWithYHSR_transcribe:(NSArray *)YHSR_transcribe {
  return YHSR_transcribe;
}
@end
