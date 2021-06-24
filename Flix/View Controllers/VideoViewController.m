//
//  VideoViewController.m
//  Flix
//
//  Created by mwen on 6/24/21.
//

#import "VideoViewController.h"
#import "Webkit/Webkit.h"

@interface VideoViewController ()
@property (weak, nonatomic) IBOutlet WKWebView *videoView;

@end

@implementation VideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *baseURLString = @"https://api.themoviedb.org/3/movie/";
    NSString *endURLString = @"/videos?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed&language=en-US";
    
    NSString *movie_id = [NSString stringWithFormat:@"%@",self.movie_id];
    NSString *firstHalfString = [baseURLString stringByAppendingString:movie_id];
    NSString *fullURLString = [firstHalfString stringByAppendingString:endURLString];

    // Convert the url String to a NSURL object.
    NSURL *url = [NSURL URLWithString:fullURLString];
    NSLog(@"%@", url);

    // Place the URL in a URL Request.
    NSURLRequest *request = [NSURLRequest requestWithURL:url
                                             cachePolicy:NSURLRequestReloadIgnoringLocalCacheData
                                         timeoutInterval:10.0];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration] delegate:nil delegateQueue:[NSOperationQueue mainQueue]];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
           if (error != nil) {
               NSLog(@"%@", [error localizedDescription]);
               
               UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Cannot Get Movie Trailer" message:@"The internet connection appears to be offline." preferredStyle:(UIAlertControllerStyleAlert)];
               
               // create an OK action
               UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK"
                  style:UIAlertActionStyleDefault
                handler:^(UIAlertAction * _Nonnull action) {
                        // handle response here.
                }];
               // add the OK action to the alert controller
               [alert addAction:okAction];
            
                [self presentViewController:alert animated:YES completion:^{
                    // optional code for what happens after the alert controller has finished presenting
                }];
               
           } else {
               NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
              
               NSArray *trailers = dataDictionary[@"results"];
               NSDictionary *movie_trailer = [trailers objectAtIndex:1];
               NSString *key = movie_trailer[@"key"];
                                        
               NSString *baseVideoURLString = @"https://www.youtube.com/watch?v=";
               NSString *fullVideoString = [baseVideoURLString stringByAppendingString:key];
               
               NSURL *url = [NSURL URLWithString:fullVideoString];
               
               NSURLRequest *request = [NSURLRequest requestWithURL:url
                    cachePolicy:NSURLRequestReloadIgnoringLocalCacheData
                    timeoutInterval:10.0];
               
               [self.videoView loadRequest:request];
           }
       }];
    [task resume];
}

//Figure out how to dismiss the modal
// Button at top
//[self dismissViewControllerAnimated:YES completion:nil];

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
