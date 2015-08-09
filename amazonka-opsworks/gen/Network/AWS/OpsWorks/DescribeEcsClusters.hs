{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.DescribeEcsClusters
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes Amazon ECS clusters that are registered with a stack. If you
-- specify only a stack ID, you can use the @MaxResults@ and @NextToken@
-- parameters to paginate the response. However, AWS OpsWorks currently
-- supports only one cluster per layer, so the result set has a maximum of
-- one element.
--
-- __Required Permissions__: To use this action, an IAM user must have a
-- Show, Deploy, or Manage permissions level for the stack or an attached
-- policy that explicitly grants permission. For more information on user
-- permissions, see
-- <http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions>.
--
-- /See:/ <http://docs.aws.amazon.com/opsworks/latest/APIReference/API_DescribeEcsClusters.html AWS API Reference> for DescribeEcsClusters.
module Network.AWS.OpsWorks.DescribeEcsClusters
    (
    -- * Creating a Request
      DescribeEcsClusters
    , describeEcsClusters
    -- * Request Lenses
    , decNextToken
    , decStackId
    , decMaxResults
    , decEcsClusterARNs

    -- * Destructuring the Response
    , DescribeEcsClustersResponse
    , describeEcsClustersResponse
    -- * Response Lenses
    , decrsNextToken
    , decrsEcsClusters
    , decrsStatus
    ) where

import Network.AWS.OpsWorks.Types
import Network.AWS.OpsWorks.Types.Product
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeEcsClusters' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'decNextToken'
--
-- * 'decStackId'
--
-- * 'decMaxResults'
--
-- * 'decEcsClusterARNs'
data DescribeEcsClusters = DescribeEcsClusters'
    { _decNextToken :: !(Maybe Text)
    , _decStackId :: !(Maybe Text)
    , _decMaxResults :: !(Maybe Int)
    , _decEcsClusterARNs :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeEcsClusters' smart constructor.
describeEcsClusters :: DescribeEcsClusters
describeEcsClusters = 
    DescribeEcsClusters'
    { _decNextToken = Nothing
    , _decStackId = Nothing
    , _decMaxResults = Nothing
    , _decEcsClusterARNs = Nothing
    }

-- | If the previous paginated request did not return all of the remaining
-- results, the response object\'s@NextToken@ parameter value is set to a
-- token. To retrieve the next set of results, call @DescribeEcsClusters@
-- again and assign that token to the request object\'s @NextToken@
-- parameter. If there are no remaining results, the previous response
-- object\'s @NextToken@ parameter is set to @null@.
decNextToken :: Lens' DescribeEcsClusters (Maybe Text)
decNextToken = lens _decNextToken (\ s a -> s{_decNextToken = a});

-- | A stack ID. @DescribeEcsClusters@ returns a description of the cluster
-- that is registered with the stack.
decStackId :: Lens' DescribeEcsClusters (Maybe Text)
decStackId = lens _decStackId (\ s a -> s{_decStackId = a});

-- | To receive a paginated response, use this parameter to specify the
-- maximum number of results to be returned with a single call. If the
-- number of available results exceeds this maximum, the response includes
-- a @NextToken@ value that you can assign to the @NextToken@ request
-- parameter to get the next set of results.
decMaxResults :: Lens' DescribeEcsClusters (Maybe Int)
decMaxResults = lens _decMaxResults (\ s a -> s{_decMaxResults = a});

-- | A list of ARNs, one for each cluster to be described.
decEcsClusterARNs :: Lens' DescribeEcsClusters [Text]
decEcsClusterARNs = lens _decEcsClusterARNs (\ s a -> s{_decEcsClusterARNs = a}) . _Default . _Coerce;

instance AWSRequest DescribeEcsClusters where
        type Sv DescribeEcsClusters = OpsWorks
        type Rs DescribeEcsClusters =
             DescribeEcsClustersResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 DescribeEcsClustersResponse' <$>
                   (x .?> "NextToken") <*>
                     (x .?> "EcsClusters" .!@ mempty)
                     <*> (pure (fromEnum s)))

instance ToHeaders DescribeEcsClusters where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("OpsWorks_20130218.DescribeEcsClusters" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DescribeEcsClusters where
        toJSON DescribeEcsClusters'{..}
          = object
              ["NextToken" .= _decNextToken,
               "StackId" .= _decStackId,
               "MaxResults" .= _decMaxResults,
               "EcsClusterArns" .= _decEcsClusterARNs]

instance ToPath DescribeEcsClusters where
        toPath = const "/"

instance ToQuery DescribeEcsClusters where
        toQuery = const mempty

-- | Contains the response to a @DescribeEcsClusters@ request.
--
-- /See:/ 'describeEcsClustersResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'decrsNextToken'
--
-- * 'decrsEcsClusters'
--
-- * 'decrsStatus'
data DescribeEcsClustersResponse = DescribeEcsClustersResponse'
    { _decrsNextToken :: !(Maybe Text)
    , _decrsEcsClusters :: !(Maybe [EcsCluster])
    , _decrsStatus :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeEcsClustersResponse' smart constructor.
describeEcsClustersResponse :: Int -> DescribeEcsClustersResponse
describeEcsClustersResponse pStatus_ = 
    DescribeEcsClustersResponse'
    { _decrsNextToken = Nothing
    , _decrsEcsClusters = Nothing
    , _decrsStatus = pStatus_
    }

-- | If a paginated request does not return all of the remaining results,
-- this parameter is set to a token that you can assign to the request
-- object\'s @NextToken@ parameter to retrieve the next set of results. If
-- the previous paginated request returned all of the remaining results,
-- this parameter is set to @null@.
decrsNextToken :: Lens' DescribeEcsClustersResponse (Maybe Text)
decrsNextToken = lens _decrsNextToken (\ s a -> s{_decrsNextToken = a});

-- | A list of @EcsCluster@ objects containing the cluster descriptions.
decrsEcsClusters :: Lens' DescribeEcsClustersResponse [EcsCluster]
decrsEcsClusters = lens _decrsEcsClusters (\ s a -> s{_decrsEcsClusters = a}) . _Default . _Coerce;

-- | Undocumented member.
decrsStatus :: Lens' DescribeEcsClustersResponse Int
decrsStatus = lens _decrsStatus (\ s a -> s{_decrsStatus = a});
