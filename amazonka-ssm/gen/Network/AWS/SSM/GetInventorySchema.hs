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
-- Module      : Network.AWS.SSM.GetInventorySchema
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a list of inventory type names for the account, or return a list of attribute names for a specific Inventory item type.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.GetInventorySchema
  ( -- * Creating a Request
    getInventorySchema,
    GetInventorySchema,

    -- * Request Lenses
    gisTypeName,
    gisNextToken,
    gisSubType,
    gisAggregator,
    gisMaxResults,

    -- * Destructuring the Response
    getInventorySchemaResponse,
    GetInventorySchemaResponse,

    -- * Response Lenses
    gisrrsNextToken,
    gisrrsSchemas,
    gisrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getInventorySchema' smart constructor.
data GetInventorySchema = GetInventorySchema'
  { _gisTypeName ::
      !(Maybe Text),
    _gisNextToken :: !(Maybe Text),
    _gisSubType :: !(Maybe Bool),
    _gisAggregator :: !(Maybe Bool),
    _gisMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetInventorySchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gisTypeName' - The type of inventory item to return.
--
-- * 'gisNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'gisSubType' - Returns the sub-type schema for a specified inventory type.
--
-- * 'gisAggregator' - Returns inventory schemas that support aggregation. For example, this call returns the @AWS:InstanceInformation@ type, because it supports aggregation based on the @PlatformName@ , @PlatformType@ , and @PlatformVersion@ attributes.
--
-- * 'gisMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
getInventorySchema ::
  GetInventorySchema
getInventorySchema =
  GetInventorySchema'
    { _gisTypeName = Nothing,
      _gisNextToken = Nothing,
      _gisSubType = Nothing,
      _gisAggregator = Nothing,
      _gisMaxResults = Nothing
    }

-- | The type of inventory item to return.
gisTypeName :: Lens' GetInventorySchema (Maybe Text)
gisTypeName = lens _gisTypeName (\s a -> s {_gisTypeName = a})

-- | The token for the next set of items to return. (You received this token from a previous call.)
gisNextToken :: Lens' GetInventorySchema (Maybe Text)
gisNextToken = lens _gisNextToken (\s a -> s {_gisNextToken = a})

-- | Returns the sub-type schema for a specified inventory type.
gisSubType :: Lens' GetInventorySchema (Maybe Bool)
gisSubType = lens _gisSubType (\s a -> s {_gisSubType = a})

-- | Returns inventory schemas that support aggregation. For example, this call returns the @AWS:InstanceInformation@ type, because it supports aggregation based on the @PlatformName@ , @PlatformType@ , and @PlatformVersion@ attributes.
gisAggregator :: Lens' GetInventorySchema (Maybe Bool)
gisAggregator = lens _gisAggregator (\s a -> s {_gisAggregator = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
gisMaxResults :: Lens' GetInventorySchema (Maybe Natural)
gisMaxResults = lens _gisMaxResults (\s a -> s {_gisMaxResults = a}) . mapping _Nat

instance AWSPager GetInventorySchema where
  page rq rs
    | stop (rs ^. gisrrsNextToken) = Nothing
    | stop (rs ^. gisrrsSchemas) = Nothing
    | otherwise =
      Just $ rq & gisNextToken .~ rs ^. gisrrsNextToken

instance AWSRequest GetInventorySchema where
  type
    Rs GetInventorySchema =
      GetInventorySchemaResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetInventorySchemaResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Schemas" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetInventorySchema

instance NFData GetInventorySchema

instance ToHeaders GetInventorySchema where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.GetInventorySchema" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetInventorySchema where
  toJSON GetInventorySchema' {..} =
    object
      ( catMaybes
          [ ("TypeName" .=) <$> _gisTypeName,
            ("NextToken" .=) <$> _gisNextToken,
            ("SubType" .=) <$> _gisSubType,
            ("Aggregator" .=) <$> _gisAggregator,
            ("MaxResults" .=) <$> _gisMaxResults
          ]
      )

instance ToPath GetInventorySchema where
  toPath = const "/"

instance ToQuery GetInventorySchema where
  toQuery = const mempty

-- | /See:/ 'getInventorySchemaResponse' smart constructor.
data GetInventorySchemaResponse = GetInventorySchemaResponse'
  { _gisrrsNextToken ::
      !(Maybe Text),
    _gisrrsSchemas ::
      !( Maybe
           [InventoryItemSchema]
       ),
    _gisrrsResponseStatus ::
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

-- | Creates a value of 'GetInventorySchemaResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gisrrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'gisrrsSchemas' - Inventory schemas returned by the request.
--
-- * 'gisrrsResponseStatus' - -- | The response status code.
getInventorySchemaResponse ::
  -- | 'gisrrsResponseStatus'
  Int ->
  GetInventorySchemaResponse
getInventorySchemaResponse pResponseStatus_ =
  GetInventorySchemaResponse'
    { _gisrrsNextToken =
        Nothing,
      _gisrrsSchemas = Nothing,
      _gisrrsResponseStatus = pResponseStatus_
    }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
gisrrsNextToken :: Lens' GetInventorySchemaResponse (Maybe Text)
gisrrsNextToken = lens _gisrrsNextToken (\s a -> s {_gisrrsNextToken = a})

-- | Inventory schemas returned by the request.
gisrrsSchemas :: Lens' GetInventorySchemaResponse [InventoryItemSchema]
gisrrsSchemas = lens _gisrrsSchemas (\s a -> s {_gisrrsSchemas = a}) . _Default . _Coerce

-- | -- | The response status code.
gisrrsResponseStatus :: Lens' GetInventorySchemaResponse Int
gisrrsResponseStatus = lens _gisrrsResponseStatus (\s a -> s {_gisrrsResponseStatus = a})

instance NFData GetInventorySchemaResponse
