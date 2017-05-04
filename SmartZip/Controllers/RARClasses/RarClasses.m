//
//  RarClasses.m
//  SmartZip
//
//  Created by Pawan Dhawan on 01/05/17.
//  Copyright © 2017 Pawan Kumar. All rights reserved.
//

#import "URKArchive.h"
#import "RarClasses.h"
#import "SmartZip-swift.h"

@implementation RarClasses


- (void)uncompressFiles:(NSString*)inFilePath{
    
    NSError *archiveError = nil;
    URKArchive *archive = [[URKArchive alloc] initWithPath:inFilePath error:&archiveError];
    NSError *error = nil;
    UnZipExternal* abc = [UnZipExternal new];
    NSString *path = [abc tempUnzipPathWith7zWithZipPath:inFilePath];
    
    BOOL extractFilesSuccessful =  [archive extractFilesTo:path overwrite:NO progress:^(URKFileInfo *currentFile, CGFloat percentArchiveDecompressed) {
        NSLog(@"Extracting %@: %f%% complete", @"", percentArchiveDecompressed);
    } error:&error];
    
    if (extractFilesSuccessful) {
        NSLog(@"Successful");
    }
    
}

- (void)uncompressFilesFromOutside:(NSString*)inFilePath{

    NSError *archiveError = nil;
    URKArchive *archive = [[URKArchive alloc] initWithPath:inFilePath error:&archiveError];
    NSError *error = nil;
    
    NSString *folderPath = [[CommonFunctions sharedInstance] docDirPath];
    NSString* fileName = [[inFilePath lastPathComponent] stringByReplacingOccurrencesOfString:@".rar" withString:@""];
    NSString* filePath = [NSString stringWithFormat:@"%@/%@", folderPath,fileName];
    
    UnZipExternal* abc = [UnZipExternal new];
    NSString *path = [abc tempUnzipPathWith7zWithZipPath:filePath];
    
    BOOL extractFilesSuccessful =  [archive extractFilesTo:path overwrite:NO progress:^(URKFileInfo *currentFile, CGFloat percentArchiveDecompressed) {
        NSLog(@"Extracting %@: %f%% complete", @"", percentArchiveDecompressed);
    } error:&error];
    
    if (extractFilesSuccessful) {
        NSLog(@"Successful");
    }


}

+(NSString *)getHomeDirectory
{
    NSString *path;
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    path = [NSString stringWithFormat:@"%@",[paths objectAtIndex:0]];
    return path;
}



@end
