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
-- Module      : Network.AWS.Glue.ListDevEndpoints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the names of all @DevEndpoint@ resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names.
--
--
-- This operation takes the optional @Tags@ field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.
module Network.AWS.Glue.ListDevEndpoints
  ( -- * Creating a Request
    listDevEndpoints,
    ListDevEndpoints,

    -- * Request Lenses
    ldeNextToken,
    ldeMaxResults,
    ldeTags,

    -- * Destructuring the Response
    listDevEndpointsResponse,
    ListDevEndpointsResponse,

    -- * Response Lenses
    lderrsNextToken,
    lderrsDevEndpointNames,
    lderrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDevEndpoints' smart constructor.
data ListDevEndpoints = ListDevEndpoints'
  { _ldeNextToken ::
      !(Maybe Text),
    _ldeMaxResults :: !(Maybe Nat),
    _ldeTags :: !(Maybe (Map Text Text))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDevEndpoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldeNextToken' - A continuation token, if this is a continuation request.
--
-- * 'ldeMaxResults' - The maximum size of a list to return.
--
-- * 'ldeTags' - Specifies to return only these tagged resources.
listDevEndpoints ::
  ListDevEndpoints
listDevEndpoints =
  ListDevEndpoints'
    { _ldeNextToken = Nothing,
      _ldeMaxResults = Nothing,
      _ldeTags = Nothing
    }

-- | A continuation token, if this is a continuation request.
ldeNextToken :: Lens' ListDevEndpoints (Maybe Text)
ldeNextToken = lens _ldeNextToken (\s a -> s {_ldeNextToken = a})

-- | The maximum size of a list to return.
ldeMaxResults :: Lens' ListDevEndpoints (Maybe Natural)
ldeMaxResults = lens _ldeMaxResults (\s a -> s {_ldeMaxResults = a}) . mapping _Nat

-- | Specifies to return only these tagged resources.
ldeTags :: Lens' ListDevEndpoints (HashMap Text Text)
ldeTags = lens _ldeTags (\s a -> s {_ldeTags = a}) . _Default . _Map

instance AWSRequest ListDevEndpoints where
  type Rs ListDevEndpoints = ListDevEndpointsResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          ListDevEndpointsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "DevEndpointNames" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListDevEndpoints

instance NFData ListDevEndpoints

instance ToHeaders ListDevEndpoints where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.ListDevEndpoints" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListDevEndpoints where
  toJSON ListDevEndpoints' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ldeNextToken,
            ("MaxResults" .=) <$> _ldeMaxResults,
            ("Tags" .=) <$> _ldeTags
          ]
      )

instance ToPath ListDevEndpoints where
  toPath = const "/"

instance ToQuery ListDevEndpoints where
  toQuery = const mempty

-- | /See:/ 'listDevEndpointsResponse' smart constructor.
data ListDevEndpointsResponse = ListDevEndpointsResponse'
  { _lderrsNextToken ::
      !(Maybe Text),
    _lderrsDevEndpointNames ::
      !(Maybe [Text]),
    _lderrsResponseStatus ::
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

-- | Creates a value of 'ListDevEndpointsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lderrsNextToken' - A continuation token, if the returned list does not contain the last metric available.
--
-- * 'lderrsDevEndpointNames' - The names of all the @DevEndpoint@ s in the account, or the @DevEndpoint@ s with the specified tags.
--
-- * 'lderrsResponseStatus' - -- | The response status code.
listDevEndpointsResponse ::
  -- | 'lderrsResponseStatus'
  Int ->
  ListDevEndpointsResponse
listDevEndpointsResponse pResponseStatus_ =
  ListDevEndpointsResponse'
    { _lderrsNextToken =
        Nothing,
      _lderrsDevEndpointNames = Nothing,
      _lderrsResponseStatus = pResponseStatus_
    }

-- | A continuation token, if the returned list does not contain the last metric available.
lderrsNextToken :: Lens' ListDevEndpointsResponse (Maybe Text)
lderrsNextToken = lens _lderrsNextToken (\s a -> s {_lderrsNextToken = a})

-- | The names of all the @DevEndpoint@ s in the account, or the @DevEndpoint@ s with the specified tags.
lderrsDevEndpointNames :: Lens' ListDevEndpointsResponse [Text]
lderrsDevEndpointNames = lens _lderrsDevEndpointNames (\s a -> s {_lderrsDevEndpointNames = a}) . _Default . _Coerce

-- | -- | The response status code.
lderrsResponseStatus :: Lens' ListDevEndpointsResponse Int
lderrsResponseStatus = lens _lderrsResponseStatus (\s a -> s {_lderrsResponseStatus = a})

instance NFData ListDevEndpointsResponse
