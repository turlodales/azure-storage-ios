// -----------------------------------------------------------------------------------------
// <copyright file="AZSAccessCondition.m" company="Microsoft">
//    Copyright 2015 Microsoft Corporation
//
//    Licensed under the MIT License;
//    you may not use this file except in compliance with the License.
//    You may obtain a copy of the License at
//      http://spdx.org/licenses/MIT
//
//    Unless required by applicable law or agreed to in writing, software
//    distributed under the License is distributed on an "AS IS" BASIS,
//    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//    See the License for the specific language governing permissions and
//    limitations under the License.
// </copyright>
// -----------------------------------------------------------------------------------------

#import "AZSAccessCondition.h"
#import "AZSUtil.h"

@implementation AZSAccessCondition

-(instancetype) init
{
    self = [super init];
    
    return self;
}

-(instancetype) initWithIfMatchCondition:(NSString*)eTag
{
    self = [self init];
    if (self)
    {
        _ifMatchETag = eTag;
    }
    
    return self;
}

-(instancetype) initWithIfNoneMatchCondition:(NSString*)eTag
{
    self = [self init];
    if (self)
    {
        _ifNoneMatchETag = eTag;
    }
    
    return self;
}

-(instancetype) initWithIfModifiedSinceCondition:(NSDate*)modifiedDate
{
    self = [self init];
    if (self)
    {
        _ifModifiedSinceDate = modifiedDate;
    }
    
    return self;
}

-(instancetype) initWithIfNotModifiedSinceCondition:(NSDate*)modifiedDate
{
    self = [self init];
    if (self)
    {
        _ifNotModifiedSinceDate = modifiedDate;
    }
    
    return self;
}

-(instancetype) initWithLeaseId:(NSString*)leaseId
{
    self = [self init];
    if (self)
    {
        _leaseId = leaseId;
    }
    
    return self;
}

+(instancetype) cloneWithEtag:(NSString*)etag accessCondition:(AZSAccessCondition*)condition;
{
    AZSAccessCondition* clone = [[AZSAccessCondition alloc] init];
    clone->_ifMatchETag = etag;
    
    if (condition)
    {
        clone.leaseId = condition.leaseId;
    }
    
    return clone;
}
@end
