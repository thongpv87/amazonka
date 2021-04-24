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
-- Module      : Network.AWS.SSM.DescribeInstanceInformation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your instances, including information about the operating system platform, the version of SSM Agent installed on the instance, instance status, and so on.
--
--
-- If you specify one or more instance IDs, it returns information for those instances. If you do not specify instance IDs, it returns information for all your instances. If you specify an instance ID that is not valid or an instance that you do not own, you receive an error.
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeInstanceInformation
  ( -- * Creating a Request
    describeInstanceInformation,
    DescribeInstanceInformation,

    -- * Request Lenses
    diiNextToken,
    diiMaxResults,
    diiInstanceInformationFilterList,
    diiFilters,

    -- * Destructuring the Response
    describeInstanceInformationResponse,
    DescribeInstanceInformationResponse,

    -- * Response Lenses
    diirrsInstanceInformationList,
    diirrsNextToken,
    diirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeInstanceInformation' smart constructor.
data DescribeInstanceInformation = DescribeInstanceInformation'
  { _diiNextToken ::
      !(Maybe Text),
    _diiMaxResults ::
      !(Maybe Nat),
    _diiInstanceInformationFilterList ::
      !( Maybe
           [InstanceInformationFilter]
       ),
    _diiFilters ::
      !( Maybe
           [InstanceInformationStringFilter]
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeInstanceInformation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diiNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'diiMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'diiInstanceInformationFilterList' - This is a legacy method. We recommend that you don't use this method. Instead, use the @Filters@ data type. @Filters@ enables you to return instance information by filtering based on tags applied to managed instances.
--
-- * 'diiFilters' - One or more filters. Use a filter to return a more specific list of instances. You can filter based on tags applied to EC2 instances. Use this @Filters@ data type instead of @InstanceInformationFilterList@ , which is deprecated.
describeInstanceInformation ::
  DescribeInstanceInformation
describeInstanceInformation =
  DescribeInstanceInformation'
    { _diiNextToken =
        Nothing,
      _diiMaxResults = Nothing,
      _diiInstanceInformationFilterList = Nothing,
      _diiFilters = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
diiNextToken :: Lens' DescribeInstanceInformation (Maybe Text)
diiNextToken = lens _diiNextToken (\s a -> s {_diiNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
diiMaxResults :: Lens' DescribeInstanceInformation (Maybe Natural)
diiMaxResults = lens _diiMaxResults (\s a -> s {_diiMaxResults = a}) . mapping _Nat

-- | This is a legacy method. We recommend that you don't use this method. Instead, use the @Filters@ data type. @Filters@ enables you to return instance information by filtering based on tags applied to managed instances.
diiInstanceInformationFilterList :: Lens' DescribeInstanceInformation [InstanceInformationFilter]
diiInstanceInformationFilterList = lens _diiInstanceInformationFilterList (\s a -> s {_diiInstanceInformationFilterList = a}) . _Default . _Coerce

-- | One or more filters. Use a filter to return a more specific list of instances. You can filter based on tags applied to EC2 instances. Use this @Filters@ data type instead of @InstanceInformationFilterList@ , which is deprecated.
diiFilters :: Lens' DescribeInstanceInformation [InstanceInformationStringFilter]
diiFilters = lens _diiFilters (\s a -> s {_diiFilters = a}) . _Default . _Coerce

instance AWSPager DescribeInstanceInformation where
  page rq rs
    | stop (rs ^. diirrsNextToken) = Nothing
    | stop (rs ^. diirrsInstanceInformationList) =
      Nothing
    | otherwise =
      Just $ rq & diiNextToken .~ rs ^. diirrsNextToken

instance AWSRequest DescribeInstanceInformation where
  type
    Rs DescribeInstanceInformation =
      DescribeInstanceInformationResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeInstanceInformationResponse'
            <$> (x .?> "InstanceInformationList" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeInstanceInformation

instance NFData DescribeInstanceInformation

instance ToHeaders DescribeInstanceInformation where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.DescribeInstanceInformation" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeInstanceInformation where
  toJSON DescribeInstanceInformation' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _diiNextToken,
            ("MaxResults" .=) <$> _diiMaxResults,
            ("InstanceInformationFilterList" .=)
              <$> _diiInstanceInformationFilterList,
            ("Filters" .=) <$> _diiFilters
          ]
      )

instance ToPath DescribeInstanceInformation where
  toPath = const "/"

instance ToQuery DescribeInstanceInformation where
  toQuery = const mempty

-- | /See:/ 'describeInstanceInformationResponse' smart constructor.
data DescribeInstanceInformationResponse = DescribeInstanceInformationResponse'
  { _diirrsInstanceInformationList ::
      !( Maybe
           [InstanceInformation]
       ),
    _diirrsNextToken ::
      !( Maybe
           Text
       ),
    _diirrsResponseStatus ::
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

-- | Creates a value of 'DescribeInstanceInformationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diirrsInstanceInformationList' - The instance information list.
--
-- * 'diirrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'diirrsResponseStatus' - -- | The response status code.
describeInstanceInformationResponse ::
  -- | 'diirrsResponseStatus'
  Int ->
  DescribeInstanceInformationResponse
describeInstanceInformationResponse pResponseStatus_ =
  DescribeInstanceInformationResponse'
    { _diirrsInstanceInformationList =
        Nothing,
      _diirrsNextToken = Nothing,
      _diirrsResponseStatus =
        pResponseStatus_
    }

-- | The instance information list.
diirrsInstanceInformationList :: Lens' DescribeInstanceInformationResponse [InstanceInformation]
diirrsInstanceInformationList = lens _diirrsInstanceInformationList (\s a -> s {_diirrsInstanceInformationList = a}) . _Default . _Coerce

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
diirrsNextToken :: Lens' DescribeInstanceInformationResponse (Maybe Text)
diirrsNextToken = lens _diirrsNextToken (\s a -> s {_diirrsNextToken = a})

-- | -- | The response status code.
diirrsResponseStatus :: Lens' DescribeInstanceInformationResponse Int
diirrsResponseStatus = lens _diirrsResponseStatus (\s a -> s {_diirrsResponseStatus = a})

instance NFData DescribeInstanceInformationResponse
