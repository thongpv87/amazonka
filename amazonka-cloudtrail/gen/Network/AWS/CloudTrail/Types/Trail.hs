{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudTrail.Types.Trail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudTrail.Types.Trail where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The settings for a trail.
--
--
--
-- /See:/ 'trail' smart constructor.
data Trail = Trail'
  { _tTrailARN :: !(Maybe Text),
    _tLogFileValidationEnabled :: !(Maybe Bool),
    _tIsOrganizationTrail :: !(Maybe Bool),
    _tHasCustomEventSelectors :: !(Maybe Bool),
    _tSNSTopicName :: !(Maybe Text),
    _tIncludeGlobalServiceEvents :: !(Maybe Bool),
    _tHomeRegion :: !(Maybe Text),
    _tKMSKeyId :: !(Maybe Text),
    _tS3KeyPrefix :: !(Maybe Text),
    _tName :: !(Maybe Text),
    _tCloudWatchLogsLogGroupARN :: !(Maybe Text),
    _tIsMultiRegionTrail :: !(Maybe Bool),
    _tS3BucketName :: !(Maybe Text),
    _tCloudWatchLogsRoleARN :: !(Maybe Text),
    _tSNSTopicARN :: !(Maybe Text),
    _tHasInsightSelectors :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Trail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tTrailARN' - Specifies the ARN of the trail. The format of a trail ARN is: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
--
-- * 'tLogFileValidationEnabled' - Specifies whether log file validation is enabled.
--
-- * 'tIsOrganizationTrail' - Specifies whether the trail is an organization trail.
--
-- * 'tHasCustomEventSelectors' - Specifies if the trail has custom event selectors.
--
-- * 'tSNSTopicName' - This field is no longer in use. Use SnsTopicARN.
--
-- * 'tIncludeGlobalServiceEvents' - Set to __True__ to include AWS API calls from AWS global services such as IAM. Otherwise, __False__ .
--
-- * 'tHomeRegion' - The region in which the trail was created.
--
-- * 'tKMSKeyId' - Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format: @arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012@
--
-- * 'tS3KeyPrefix' - Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html Finding Your CloudTrail Log Files> .The maximum length is 200 characters.
--
-- * 'tName' - Name of the trail set by calling 'CreateTrail' . The maximum length is 128 characters.
--
-- * 'tCloudWatchLogsLogGroupARN' - Specifies an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered.
--
-- * 'tIsMultiRegionTrail' - Specifies whether the trail exists only in one region or exists in all regions.
--
-- * 'tS3BucketName' - Name of the Amazon S3 bucket into which CloudTrail delivers your trail files. See <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html Amazon S3 Bucket Naming Requirements> .
--
-- * 'tCloudWatchLogsRoleARN' - Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.
--
-- * 'tSNSTopicARN' - Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is: @arn:aws:sns:us-east-2:123456789012:MyTopic@
--
-- * 'tHasInsightSelectors' - Specifies whether a trail has insight types specified in an @InsightSelector@ list.
trail ::
  Trail
trail =
  Trail'
    { _tTrailARN = Nothing,
      _tLogFileValidationEnabled = Nothing,
      _tIsOrganizationTrail = Nothing,
      _tHasCustomEventSelectors = Nothing,
      _tSNSTopicName = Nothing,
      _tIncludeGlobalServiceEvents = Nothing,
      _tHomeRegion = Nothing,
      _tKMSKeyId = Nothing,
      _tS3KeyPrefix = Nothing,
      _tName = Nothing,
      _tCloudWatchLogsLogGroupARN = Nothing,
      _tIsMultiRegionTrail = Nothing,
      _tS3BucketName = Nothing,
      _tCloudWatchLogsRoleARN = Nothing,
      _tSNSTopicARN = Nothing,
      _tHasInsightSelectors = Nothing
    }

-- | Specifies the ARN of the trail. The format of a trail ARN is: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
tTrailARN :: Lens' Trail (Maybe Text)
tTrailARN = lens _tTrailARN (\s a -> s {_tTrailARN = a})

-- | Specifies whether log file validation is enabled.
tLogFileValidationEnabled :: Lens' Trail (Maybe Bool)
tLogFileValidationEnabled = lens _tLogFileValidationEnabled (\s a -> s {_tLogFileValidationEnabled = a})

-- | Specifies whether the trail is an organization trail.
tIsOrganizationTrail :: Lens' Trail (Maybe Bool)
tIsOrganizationTrail = lens _tIsOrganizationTrail (\s a -> s {_tIsOrganizationTrail = a})

-- | Specifies if the trail has custom event selectors.
tHasCustomEventSelectors :: Lens' Trail (Maybe Bool)
tHasCustomEventSelectors = lens _tHasCustomEventSelectors (\s a -> s {_tHasCustomEventSelectors = a})

-- | This field is no longer in use. Use SnsTopicARN.
tSNSTopicName :: Lens' Trail (Maybe Text)
tSNSTopicName = lens _tSNSTopicName (\s a -> s {_tSNSTopicName = a})

-- | Set to __True__ to include AWS API calls from AWS global services such as IAM. Otherwise, __False__ .
tIncludeGlobalServiceEvents :: Lens' Trail (Maybe Bool)
tIncludeGlobalServiceEvents = lens _tIncludeGlobalServiceEvents (\s a -> s {_tIncludeGlobalServiceEvents = a})

-- | The region in which the trail was created.
tHomeRegion :: Lens' Trail (Maybe Text)
tHomeRegion = lens _tHomeRegion (\s a -> s {_tHomeRegion = a})

-- | Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format: @arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012@
tKMSKeyId :: Lens' Trail (Maybe Text)
tKMSKeyId = lens _tKMSKeyId (\s a -> s {_tKMSKeyId = a})

-- | Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html Finding Your CloudTrail Log Files> .The maximum length is 200 characters.
tS3KeyPrefix :: Lens' Trail (Maybe Text)
tS3KeyPrefix = lens _tS3KeyPrefix (\s a -> s {_tS3KeyPrefix = a})

-- | Name of the trail set by calling 'CreateTrail' . The maximum length is 128 characters.
tName :: Lens' Trail (Maybe Text)
tName = lens _tName (\s a -> s {_tName = a})

-- | Specifies an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered.
tCloudWatchLogsLogGroupARN :: Lens' Trail (Maybe Text)
tCloudWatchLogsLogGroupARN = lens _tCloudWatchLogsLogGroupARN (\s a -> s {_tCloudWatchLogsLogGroupARN = a})

-- | Specifies whether the trail exists only in one region or exists in all regions.
tIsMultiRegionTrail :: Lens' Trail (Maybe Bool)
tIsMultiRegionTrail = lens _tIsMultiRegionTrail (\s a -> s {_tIsMultiRegionTrail = a})

-- | Name of the Amazon S3 bucket into which CloudTrail delivers your trail files. See <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html Amazon S3 Bucket Naming Requirements> .
tS3BucketName :: Lens' Trail (Maybe Text)
tS3BucketName = lens _tS3BucketName (\s a -> s {_tS3BucketName = a})

-- | Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.
tCloudWatchLogsRoleARN :: Lens' Trail (Maybe Text)
tCloudWatchLogsRoleARN = lens _tCloudWatchLogsRoleARN (\s a -> s {_tCloudWatchLogsRoleARN = a})

-- | Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is: @arn:aws:sns:us-east-2:123456789012:MyTopic@
tSNSTopicARN :: Lens' Trail (Maybe Text)
tSNSTopicARN = lens _tSNSTopicARN (\s a -> s {_tSNSTopicARN = a})

-- | Specifies whether a trail has insight types specified in an @InsightSelector@ list.
tHasInsightSelectors :: Lens' Trail (Maybe Bool)
tHasInsightSelectors = lens _tHasInsightSelectors (\s a -> s {_tHasInsightSelectors = a})

instance FromJSON Trail where
  parseJSON =
    withObject
      "Trail"
      ( \x ->
          Trail'
            <$> (x .:? "TrailARN")
            <*> (x .:? "LogFileValidationEnabled")
            <*> (x .:? "IsOrganizationTrail")
            <*> (x .:? "HasCustomEventSelectors")
            <*> (x .:? "SnsTopicName")
            <*> (x .:? "IncludeGlobalServiceEvents")
            <*> (x .:? "HomeRegion")
            <*> (x .:? "KmsKeyId")
            <*> (x .:? "S3KeyPrefix")
            <*> (x .:? "Name")
            <*> (x .:? "CloudWatchLogsLogGroupArn")
            <*> (x .:? "IsMultiRegionTrail")
            <*> (x .:? "S3BucketName")
            <*> (x .:? "CloudWatchLogsRoleArn")
            <*> (x .:? "SnsTopicARN")
            <*> (x .:? "HasInsightSelectors")
      )

instance Hashable Trail

instance NFData Trail
