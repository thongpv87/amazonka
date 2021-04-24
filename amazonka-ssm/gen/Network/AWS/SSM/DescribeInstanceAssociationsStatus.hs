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
-- Module      : Network.AWS.SSM.DescribeInstanceAssociationsStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The status of the associations for the instance(s).
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeInstanceAssociationsStatus
  ( -- * Creating a Request
    describeInstanceAssociationsStatus,
    DescribeInstanceAssociationsStatus,

    -- * Request Lenses
    diasNextToken,
    diasMaxResults,
    diasInstanceId,

    -- * Destructuring the Response
    describeInstanceAssociationsStatusResponse,
    DescribeInstanceAssociationsStatusResponse,

    -- * Response Lenses
    diasrrsNextToken,
    diasrrsInstanceAssociationStatusInfos,
    diasrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeInstanceAssociationsStatus' smart constructor.
data DescribeInstanceAssociationsStatus = DescribeInstanceAssociationsStatus'
  { _diasNextToken ::
      !( Maybe
           Text
       ),
    _diasMaxResults ::
      !( Maybe
           Nat
       ),
    _diasInstanceId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeInstanceAssociationsStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diasNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'diasMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'diasInstanceId' - The instance IDs for which you want association status information.
describeInstanceAssociationsStatus ::
  -- | 'diasInstanceId'
  Text ->
  DescribeInstanceAssociationsStatus
describeInstanceAssociationsStatus pInstanceId_ =
  DescribeInstanceAssociationsStatus'
    { _diasNextToken =
        Nothing,
      _diasMaxResults = Nothing,
      _diasInstanceId = pInstanceId_
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
diasNextToken :: Lens' DescribeInstanceAssociationsStatus (Maybe Text)
diasNextToken = lens _diasNextToken (\s a -> s {_diasNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
diasMaxResults :: Lens' DescribeInstanceAssociationsStatus (Maybe Natural)
diasMaxResults = lens _diasMaxResults (\s a -> s {_diasMaxResults = a}) . mapping _Nat

-- | The instance IDs for which you want association status information.
diasInstanceId :: Lens' DescribeInstanceAssociationsStatus Text
diasInstanceId = lens _diasInstanceId (\s a -> s {_diasInstanceId = a})

instance AWSPager DescribeInstanceAssociationsStatus where
  page rq rs
    | stop (rs ^. diasrrsNextToken) = Nothing
    | stop (rs ^. diasrrsInstanceAssociationStatusInfos) =
      Nothing
    | otherwise =
      Just $ rq & diasNextToken .~ rs ^. diasrrsNextToken

instance
  AWSRequest
    DescribeInstanceAssociationsStatus
  where
  type
    Rs DescribeInstanceAssociationsStatus =
      DescribeInstanceAssociationsStatusResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeInstanceAssociationsStatusResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "InstanceAssociationStatusInfos" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeInstanceAssociationsStatus

instance NFData DescribeInstanceAssociationsStatus

instance ToHeaders DescribeInstanceAssociationsStatus where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.DescribeInstanceAssociationsStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeInstanceAssociationsStatus where
  toJSON DescribeInstanceAssociationsStatus' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _diasNextToken,
            ("MaxResults" .=) <$> _diasMaxResults,
            Just ("InstanceId" .= _diasInstanceId)
          ]
      )

instance ToPath DescribeInstanceAssociationsStatus where
  toPath = const "/"

instance ToQuery DescribeInstanceAssociationsStatus where
  toQuery = const mempty

-- | /See:/ 'describeInstanceAssociationsStatusResponse' smart constructor.
data DescribeInstanceAssociationsStatusResponse = DescribeInstanceAssociationsStatusResponse'
  { _diasrrsNextToken ::
      !( Maybe
           Text
       ),
    _diasrrsInstanceAssociationStatusInfos ::
      !( Maybe
           [InstanceAssociationStatusInfo]
       ),
    _diasrrsResponseStatus ::
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

-- | Creates a value of 'DescribeInstanceAssociationsStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diasrrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'diasrrsInstanceAssociationStatusInfos' - Status information about the association.
--
-- * 'diasrrsResponseStatus' - -- | The response status code.
describeInstanceAssociationsStatusResponse ::
  -- | 'diasrrsResponseStatus'
  Int ->
  DescribeInstanceAssociationsStatusResponse
describeInstanceAssociationsStatusResponse
  pResponseStatus_ =
    DescribeInstanceAssociationsStatusResponse'
      { _diasrrsNextToken =
          Nothing,
        _diasrrsInstanceAssociationStatusInfos =
          Nothing,
        _diasrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
diasrrsNextToken :: Lens' DescribeInstanceAssociationsStatusResponse (Maybe Text)
diasrrsNextToken = lens _diasrrsNextToken (\s a -> s {_diasrrsNextToken = a})

-- | Status information about the association.
diasrrsInstanceAssociationStatusInfos :: Lens' DescribeInstanceAssociationsStatusResponse [InstanceAssociationStatusInfo]
diasrrsInstanceAssociationStatusInfos = lens _diasrrsInstanceAssociationStatusInfos (\s a -> s {_diasrrsInstanceAssociationStatusInfos = a}) . _Default . _Coerce

-- | -- | The response status code.
diasrrsResponseStatus :: Lens' DescribeInstanceAssociationsStatusResponse Int
diasrrsResponseStatus = lens _diasrrsResponseStatus (\s a -> s {_diasrrsResponseStatus = a})

instance
  NFData
    DescribeInstanceAssociationsStatusResponse
