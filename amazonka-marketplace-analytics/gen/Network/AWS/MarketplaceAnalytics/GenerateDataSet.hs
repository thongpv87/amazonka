{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MarketplaceAnalytics.GenerateDataSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Given a data set type and data set publication date, asynchronously publishes the requested data set to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that can be used to correlate requests with notifications from the SNS topic. Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD.csv. If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will be overwritten by the new file. Requires a Role with an attached permissions policy providing Allow permissions for the following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
module Network.AWS.MarketplaceAnalytics.GenerateDataSet
  ( -- * Creating a Request
    generateDataSet,
    GenerateDataSet,

    -- * Request Lenses
    gdsDestinationS3Prefix,
    gdsCustomerDefinedValues,
    gdsDataSetType,
    gdsDataSetPublicationDate,
    gdsRoleNameARN,
    gdsDestinationS3BucketName,
    gdsSnsTopicARN,

    -- * Destructuring the Response
    generateDataSetResponse,
    GenerateDataSetResponse,

    -- * Response Lenses
    gdsrrsDataSetRequestId,
    gdsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MarketplaceAnalytics.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the GenerateDataSet operation.
--
-- /See:/ 'generateDataSet' smart constructor.
data GenerateDataSet = GenerateDataSet'
  { _gdsDestinationS3Prefix ::
      !(Maybe Text),
    _gdsCustomerDefinedValues ::
      !(Maybe (Map Text Text)),
    _gdsDataSetType :: !DataSetType,
    _gdsDataSetPublicationDate :: !POSIX,
    _gdsRoleNameARN :: !Text,
    _gdsDestinationS3BucketName :: !Text,
    _gdsSnsTopicARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GenerateDataSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdsDestinationS3Prefix' - (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems. For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile". If the prefix directory structure does not exist, it will be created. If no prefix is provided, the data set will be published to the S3 bucket root.
--
-- * 'gdsCustomerDefinedValues' - (Optional) Key-value pairs which will be returned, unmodified, in the Amazon SNS notification message and the data set metadata file. These key-value pairs can be used to correlated responses with tracking information from other systems.
--
-- * 'gdsDataSetType' - The desired data set type.     * __customer_subscriber_hourly_monthly_subscriptions__ From 2017-09-15 to present: Available daily by 24:00 UTC.     * __customer_subscriber_annual_subscriptions__ From 2017-09-15 to present: Available daily by 24:00 UTC.     * __daily_business_usage_by_instance_type__ From 2017-09-15 to present: Available daily by 24:00 UTC.     * __daily_business_fees__ From 2017-09-15 to present: Available daily by 24:00 UTC.     * __daily_business_free_trial_conversions__ From 2017-09-15 to present: Available daily by 24:00 UTC.     * __daily_business_new_instances__ From 2017-09-15 to present: Available daily by 24:00 UTC.     * __daily_business_new_product_subscribers__ From 2017-09-15 to present: Available daily by 24:00 UTC.     * __daily_business_canceled_product_subscribers__ From 2017-09-15 to present: Available daily by 24:00 UTC.     * __monthly_revenue_billing_and_revenue_data__ From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes metered transactions (e.g. hourly) from one month prior.     * __monthly_revenue_annual_subscriptions__ From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes up-front software charges (e.g. annual) from one month prior.     * __monthly_revenue_field_demonstration_usage__ From 2018-03-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.     * __monthly_revenue_flexible_payment_schedule__ From 2018-11-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.     * __disbursed_amount_by_product__ From 2017-09-15 to present: Available every 30 days by 24:00 UTC.     * __disbursed_amount_by_instance_hours__ From 2017-09-15 to present: Available every 30 days by 24:00 UTC.     * __disbursed_amount_by_customer_geo__ From 2017-09-15 to present: Available every 30 days by 24:00 UTC.     * __disbursed_amount_by_age_of_uncollected_funds__ From 2017-09-15 to present: Available every 30 days by 24:00 UTC.     * __disbursed_amount_by_age_of_disbursed_funds__ From 2017-09-15 to present: Available every 30 days by 24:00 UTC.     * __disbursed_amount_by_age_of_past_due_funds__ From 2018-04-07 to present: Available every 30 days by 24:00 UTC.     * __disbursed_amount_by_uncollected_funds_breakdown__ From 2019-10-04 to present: Available every 30 days by 24:00 UTC.     * __sales_compensation_billed_revenue__ From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes metered transactions (e.g. hourly) from one month prior, and up-front software charges (e.g. annual) from one month prior.     * __us_sales_and_use_tax_records__ From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.     * __disbursed_amount_by_product_with_uncollected_funds__ This data set is deprecated. Download related reports from AMMP instead!     * __customer_profile_by_industry__ This data set is deprecated. Download related reports from AMMP instead!     * __customer_profile_by_revenue__ This data set is deprecated. Download related reports from AMMP instead!     * __customer_profile_by_geography__ This data set is deprecated. Download related reports from AMMP instead!
--
-- * 'gdsDataSetPublicationDate' - The date a data set was published. For daily data sets, provide a date with day-level granularity for the desired day. For monthly data sets except those with prefix disbursed_amount, provide a date with month-level granularity for the desired month (the day value will be ignored). For data sets with prefix disbursed_amount, provide a date with day-level granularity for the desired day. For these data sets we will look backwards in time over the range of 31 days until the first data set is found (the latest one).
--
-- * 'gdsRoleNameARN' - The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided AWS services.
--
-- * 'gdsDestinationS3BucketName' - The name (friendly name, not ARN) of the destination S3 bucket.
--
-- * 'gdsSnsTopicARN' - Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an error has occurred.
generateDataSet ::
  -- | 'gdsDataSetType'
  DataSetType ->
  -- | 'gdsDataSetPublicationDate'
  UTCTime ->
  -- | 'gdsRoleNameARN'
  Text ->
  -- | 'gdsDestinationS3BucketName'
  Text ->
  -- | 'gdsSnsTopicARN'
  Text ->
  GenerateDataSet
generateDataSet
  pDataSetType_
  pDataSetPublicationDate_
  pRoleNameARN_
  pDestinationS3BucketName_
  pSnsTopicARN_ =
    GenerateDataSet'
      { _gdsDestinationS3Prefix = Nothing,
        _gdsCustomerDefinedValues = Nothing,
        _gdsDataSetType = pDataSetType_,
        _gdsDataSetPublicationDate =
          _Time # pDataSetPublicationDate_,
        _gdsRoleNameARN = pRoleNameARN_,
        _gdsDestinationS3BucketName =
          pDestinationS3BucketName_,
        _gdsSnsTopicARN = pSnsTopicARN_
      }

-- | (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems. For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile". If the prefix directory structure does not exist, it will be created. If no prefix is provided, the data set will be published to the S3 bucket root.
gdsDestinationS3Prefix :: Lens' GenerateDataSet (Maybe Text)
gdsDestinationS3Prefix = lens _gdsDestinationS3Prefix (\s a -> s {_gdsDestinationS3Prefix = a})

-- | (Optional) Key-value pairs which will be returned, unmodified, in the Amazon SNS notification message and the data set metadata file. These key-value pairs can be used to correlated responses with tracking information from other systems.
gdsCustomerDefinedValues :: Lens' GenerateDataSet (HashMap Text Text)
gdsCustomerDefinedValues = lens _gdsCustomerDefinedValues (\s a -> s {_gdsCustomerDefinedValues = a}) . _Default . _Map

-- | The desired data set type.     * __customer_subscriber_hourly_monthly_subscriptions__ From 2017-09-15 to present: Available daily by 24:00 UTC.     * __customer_subscriber_annual_subscriptions__ From 2017-09-15 to present: Available daily by 24:00 UTC.     * __daily_business_usage_by_instance_type__ From 2017-09-15 to present: Available daily by 24:00 UTC.     * __daily_business_fees__ From 2017-09-15 to present: Available daily by 24:00 UTC.     * __daily_business_free_trial_conversions__ From 2017-09-15 to present: Available daily by 24:00 UTC.     * __daily_business_new_instances__ From 2017-09-15 to present: Available daily by 24:00 UTC.     * __daily_business_new_product_subscribers__ From 2017-09-15 to present: Available daily by 24:00 UTC.     * __daily_business_canceled_product_subscribers__ From 2017-09-15 to present: Available daily by 24:00 UTC.     * __monthly_revenue_billing_and_revenue_data__ From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes metered transactions (e.g. hourly) from one month prior.     * __monthly_revenue_annual_subscriptions__ From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes up-front software charges (e.g. annual) from one month prior.     * __monthly_revenue_field_demonstration_usage__ From 2018-03-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.     * __monthly_revenue_flexible_payment_schedule__ From 2018-11-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.     * __disbursed_amount_by_product__ From 2017-09-15 to present: Available every 30 days by 24:00 UTC.     * __disbursed_amount_by_instance_hours__ From 2017-09-15 to present: Available every 30 days by 24:00 UTC.     * __disbursed_amount_by_customer_geo__ From 2017-09-15 to present: Available every 30 days by 24:00 UTC.     * __disbursed_amount_by_age_of_uncollected_funds__ From 2017-09-15 to present: Available every 30 days by 24:00 UTC.     * __disbursed_amount_by_age_of_disbursed_funds__ From 2017-09-15 to present: Available every 30 days by 24:00 UTC.     * __disbursed_amount_by_age_of_past_due_funds__ From 2018-04-07 to present: Available every 30 days by 24:00 UTC.     * __disbursed_amount_by_uncollected_funds_breakdown__ From 2019-10-04 to present: Available every 30 days by 24:00 UTC.     * __sales_compensation_billed_revenue__ From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes metered transactions (e.g. hourly) from one month prior, and up-front software charges (e.g. annual) from one month prior.     * __us_sales_and_use_tax_records__ From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.     * __disbursed_amount_by_product_with_uncollected_funds__ This data set is deprecated. Download related reports from AMMP instead!     * __customer_profile_by_industry__ This data set is deprecated. Download related reports from AMMP instead!     * __customer_profile_by_revenue__ This data set is deprecated. Download related reports from AMMP instead!     * __customer_profile_by_geography__ This data set is deprecated. Download related reports from AMMP instead!
gdsDataSetType :: Lens' GenerateDataSet DataSetType
gdsDataSetType = lens _gdsDataSetType (\s a -> s {_gdsDataSetType = a})

-- | The date a data set was published. For daily data sets, provide a date with day-level granularity for the desired day. For monthly data sets except those with prefix disbursed_amount, provide a date with month-level granularity for the desired month (the day value will be ignored). For data sets with prefix disbursed_amount, provide a date with day-level granularity for the desired day. For these data sets we will look backwards in time over the range of 31 days until the first data set is found (the latest one).
gdsDataSetPublicationDate :: Lens' GenerateDataSet UTCTime
gdsDataSetPublicationDate = lens _gdsDataSetPublicationDate (\s a -> s {_gdsDataSetPublicationDate = a}) . _Time

-- | The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided AWS services.
gdsRoleNameARN :: Lens' GenerateDataSet Text
gdsRoleNameARN = lens _gdsRoleNameARN (\s a -> s {_gdsRoleNameARN = a})

-- | The name (friendly name, not ARN) of the destination S3 bucket.
gdsDestinationS3BucketName :: Lens' GenerateDataSet Text
gdsDestinationS3BucketName = lens _gdsDestinationS3BucketName (\s a -> s {_gdsDestinationS3BucketName = a})

-- | Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an error has occurred.
gdsSnsTopicARN :: Lens' GenerateDataSet Text
gdsSnsTopicARN = lens _gdsSnsTopicARN (\s a -> s {_gdsSnsTopicARN = a})

instance AWSRequest GenerateDataSet where
  type Rs GenerateDataSet = GenerateDataSetResponse
  request = postJSON marketplaceAnalytics
  response =
    receiveJSON
      ( \s h x ->
          GenerateDataSetResponse'
            <$> (x .?> "dataSetRequestId") <*> (pure (fromEnum s))
      )

instance Hashable GenerateDataSet

instance NFData GenerateDataSet

instance ToHeaders GenerateDataSet where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MarketplaceCommerceAnalytics20150701.GenerateDataSet" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GenerateDataSet where
  toJSON GenerateDataSet' {..} =
    object
      ( catMaybes
          [ ("destinationS3Prefix" .=)
              <$> _gdsDestinationS3Prefix,
            ("customerDefinedValues" .=)
              <$> _gdsCustomerDefinedValues,
            Just ("dataSetType" .= _gdsDataSetType),
            Just
              ( "dataSetPublicationDate"
                  .= _gdsDataSetPublicationDate
              ),
            Just ("roleNameArn" .= _gdsRoleNameARN),
            Just
              ( "destinationS3BucketName"
                  .= _gdsDestinationS3BucketName
              ),
            Just ("snsTopicArn" .= _gdsSnsTopicARN)
          ]
      )

instance ToPath GenerateDataSet where
  toPath = const "/"

instance ToQuery GenerateDataSet where
  toQuery = const mempty

-- | Container for the result of the GenerateDataSet operation.
--
-- /See:/ 'generateDataSetResponse' smart constructor.
data GenerateDataSetResponse = GenerateDataSetResponse'
  { _gdsrrsDataSetRequestId ::
      !(Maybe Text),
    _gdsrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GenerateDataSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdsrrsDataSetRequestId' - A unique identifier representing a specific request to the GenerateDataSet operation. This identifier can be used to correlate a request with notifications from the SNS topic.
--
-- * 'gdsrrsResponseStatus' - -- | The response status code.
generateDataSetResponse ::
  -- | 'gdsrrsResponseStatus'
  Int ->
  GenerateDataSetResponse
generateDataSetResponse pResponseStatus_ =
  GenerateDataSetResponse'
    { _gdsrrsDataSetRequestId =
        Nothing,
      _gdsrrsResponseStatus = pResponseStatus_
    }

-- | A unique identifier representing a specific request to the GenerateDataSet operation. This identifier can be used to correlate a request with notifications from the SNS topic.
gdsrrsDataSetRequestId :: Lens' GenerateDataSetResponse (Maybe Text)
gdsrrsDataSetRequestId = lens _gdsrrsDataSetRequestId (\s a -> s {_gdsrrsDataSetRequestId = a})

-- | -- | The response status code.
gdsrrsResponseStatus :: Lens' GenerateDataSetResponse Int
gdsrrsResponseStatus = lens _gdsrrsResponseStatus (\s a -> s {_gdsrrsResponseStatus = a})

instance NFData GenerateDataSetResponse
