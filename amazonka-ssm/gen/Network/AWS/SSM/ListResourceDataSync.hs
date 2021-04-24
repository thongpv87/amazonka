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
-- Module      : Network.AWS.SSM.ListResourceDataSync
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists your resource data sync configurations. Includes information about the last time a sync attempted to start, the last sync status, and the last time a sync successfully completed.
--
--
-- The number of sync configurations might be too large to return using a single call to @ListResourceDataSync@ . You can limit the number of sync configurations returned by using the @MaxResults@ parameter. To determine whether there are more sync configurations to list, check the value of @NextToken@ in the output. If there are more sync configurations to list, you can request them by specifying the @NextToken@ returned in the call to the parameter of a subsequent call.
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.ListResourceDataSync
  ( -- * Creating a Request
    listResourceDataSync,
    ListResourceDataSync,

    -- * Request Lenses
    lrdsSyncType,
    lrdsNextToken,
    lrdsMaxResults,

    -- * Destructuring the Response
    listResourceDataSyncResponse,
    ListResourceDataSyncResponse,

    -- * Response Lenses
    lrdsrrsNextToken,
    lrdsrrsResourceDataSyncItems,
    lrdsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'listResourceDataSync' smart constructor.
data ListResourceDataSync = ListResourceDataSync'
  { _lrdsSyncType ::
      !(Maybe Text),
    _lrdsNextToken ::
      !(Maybe Text),
    _lrdsMaxResults ::
      !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListResourceDataSync' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrdsSyncType' - View a list of resource data syncs according to the sync type. Specify @SyncToDestination@ to view resource data syncs that synchronize data to an Amazon S3 bucket. Specify @SyncFromSource@ to view resource data syncs from AWS Organizations or from multiple AWS Regions.
--
-- * 'lrdsNextToken' - A token to start the list. Use this token to get the next set of results.
--
-- * 'lrdsMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
listResourceDataSync ::
  ListResourceDataSync
listResourceDataSync =
  ListResourceDataSync'
    { _lrdsSyncType = Nothing,
      _lrdsNextToken = Nothing,
      _lrdsMaxResults = Nothing
    }

-- | View a list of resource data syncs according to the sync type. Specify @SyncToDestination@ to view resource data syncs that synchronize data to an Amazon S3 bucket. Specify @SyncFromSource@ to view resource data syncs from AWS Organizations or from multiple AWS Regions.
lrdsSyncType :: Lens' ListResourceDataSync (Maybe Text)
lrdsSyncType = lens _lrdsSyncType (\s a -> s {_lrdsSyncType = a})

-- | A token to start the list. Use this token to get the next set of results.
lrdsNextToken :: Lens' ListResourceDataSync (Maybe Text)
lrdsNextToken = lens _lrdsNextToken (\s a -> s {_lrdsNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
lrdsMaxResults :: Lens' ListResourceDataSync (Maybe Natural)
lrdsMaxResults = lens _lrdsMaxResults (\s a -> s {_lrdsMaxResults = a}) . mapping _Nat

instance AWSPager ListResourceDataSync where
  page rq rs
    | stop (rs ^. lrdsrrsNextToken) = Nothing
    | stop (rs ^. lrdsrrsResourceDataSyncItems) = Nothing
    | otherwise =
      Just $ rq & lrdsNextToken .~ rs ^. lrdsrrsNextToken

instance AWSRequest ListResourceDataSync where
  type
    Rs ListResourceDataSync =
      ListResourceDataSyncResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          ListResourceDataSyncResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ResourceDataSyncItems" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListResourceDataSync

instance NFData ListResourceDataSync

instance ToHeaders ListResourceDataSync where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.ListResourceDataSync" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListResourceDataSync where
  toJSON ListResourceDataSync' {..} =
    object
      ( catMaybes
          [ ("SyncType" .=) <$> _lrdsSyncType,
            ("NextToken" .=) <$> _lrdsNextToken,
            ("MaxResults" .=) <$> _lrdsMaxResults
          ]
      )

instance ToPath ListResourceDataSync where
  toPath = const "/"

instance ToQuery ListResourceDataSync where
  toQuery = const mempty

-- | /See:/ 'listResourceDataSyncResponse' smart constructor.
data ListResourceDataSyncResponse = ListResourceDataSyncResponse'
  { _lrdsrrsNextToken ::
      !(Maybe Text),
    _lrdsrrsResourceDataSyncItems ::
      !( Maybe
           [ResourceDataSyncItem]
       ),
    _lrdsrrsResponseStatus ::
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

-- | Creates a value of 'ListResourceDataSyncResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrdsrrsNextToken' - The token for the next set of items to return. Use this token to get the next set of results.
--
-- * 'lrdsrrsResourceDataSyncItems' - A list of your current Resource Data Sync configurations and their statuses.
--
-- * 'lrdsrrsResponseStatus' - -- | The response status code.
listResourceDataSyncResponse ::
  -- | 'lrdsrrsResponseStatus'
  Int ->
  ListResourceDataSyncResponse
listResourceDataSyncResponse pResponseStatus_ =
  ListResourceDataSyncResponse'
    { _lrdsrrsNextToken =
        Nothing,
      _lrdsrrsResourceDataSyncItems = Nothing,
      _lrdsrrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of items to return. Use this token to get the next set of results.
lrdsrrsNextToken :: Lens' ListResourceDataSyncResponse (Maybe Text)
lrdsrrsNextToken = lens _lrdsrrsNextToken (\s a -> s {_lrdsrrsNextToken = a})

-- | A list of your current Resource Data Sync configurations and their statuses.
lrdsrrsResourceDataSyncItems :: Lens' ListResourceDataSyncResponse [ResourceDataSyncItem]
lrdsrrsResourceDataSyncItems = lens _lrdsrrsResourceDataSyncItems (\s a -> s {_lrdsrrsResourceDataSyncItems = a}) . _Default . _Coerce

-- | -- | The response status code.
lrdsrrsResponseStatus :: Lens' ListResourceDataSyncResponse Int
lrdsrrsResponseStatus = lens _lrdsrrsResponseStatus (\s a -> s {_lrdsrrsResponseStatus = a})

instance NFData ListResourceDataSyncResponse
