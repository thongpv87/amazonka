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
-- Module      : Network.AWS.SSM.ListAssociationVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves all versions of an association for a specific association ID.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.ListAssociationVersions
  ( -- * Creating a Request
    listAssociationVersions,
    ListAssociationVersions,

    -- * Request Lenses
    lavNextToken,
    lavMaxResults,
    lavAssociationId,

    -- * Destructuring the Response
    listAssociationVersionsResponse,
    ListAssociationVersionsResponse,

    -- * Response Lenses
    lavrrsNextToken,
    lavrrsAssociationVersions,
    lavrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'listAssociationVersions' smart constructor.
data ListAssociationVersions = ListAssociationVersions'
  { _lavNextToken ::
      !(Maybe Text),
    _lavMaxResults ::
      !(Maybe Nat),
    _lavAssociationId ::
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

-- | Creates a value of 'ListAssociationVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lavNextToken' - A token to start the list. Use this token to get the next set of results.
--
-- * 'lavMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'lavAssociationId' - The association ID for which you want to view all versions.
listAssociationVersions ::
  -- | 'lavAssociationId'
  Text ->
  ListAssociationVersions
listAssociationVersions pAssociationId_ =
  ListAssociationVersions'
    { _lavNextToken = Nothing,
      _lavMaxResults = Nothing,
      _lavAssociationId = pAssociationId_
    }

-- | A token to start the list. Use this token to get the next set of results.
lavNextToken :: Lens' ListAssociationVersions (Maybe Text)
lavNextToken = lens _lavNextToken (\s a -> s {_lavNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
lavMaxResults :: Lens' ListAssociationVersions (Maybe Natural)
lavMaxResults = lens _lavMaxResults (\s a -> s {_lavMaxResults = a}) . mapping _Nat

-- | The association ID for which you want to view all versions.
lavAssociationId :: Lens' ListAssociationVersions Text
lavAssociationId = lens _lavAssociationId (\s a -> s {_lavAssociationId = a})

instance AWSPager ListAssociationVersions where
  page rq rs
    | stop (rs ^. lavrrsNextToken) = Nothing
    | stop (rs ^. lavrrsAssociationVersions) = Nothing
    | otherwise =
      Just $ rq & lavNextToken .~ rs ^. lavrrsNextToken

instance AWSRequest ListAssociationVersions where
  type
    Rs ListAssociationVersions =
      ListAssociationVersionsResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          ListAssociationVersionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "AssociationVersions")
            <*> (pure (fromEnum s))
      )

instance Hashable ListAssociationVersions

instance NFData ListAssociationVersions

instance ToHeaders ListAssociationVersions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.ListAssociationVersions" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAssociationVersions where
  toJSON ListAssociationVersions' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lavNextToken,
            ("MaxResults" .=) <$> _lavMaxResults,
            Just ("AssociationId" .= _lavAssociationId)
          ]
      )

instance ToPath ListAssociationVersions where
  toPath = const "/"

instance ToQuery ListAssociationVersions where
  toQuery = const mempty

-- | /See:/ 'listAssociationVersionsResponse' smart constructor.
data ListAssociationVersionsResponse = ListAssociationVersionsResponse'
  { _lavrrsNextToken ::
      !( Maybe
           Text
       ),
    _lavrrsAssociationVersions ::
      !( Maybe
           ( List1
               AssociationVersionInfo
           )
       ),
    _lavrrsResponseStatus ::
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

-- | Creates a value of 'ListAssociationVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lavrrsNextToken' - The token for the next set of items to return. Use this token to get the next set of results.
--
-- * 'lavrrsAssociationVersions' - Information about all versions of the association for the specified association ID.
--
-- * 'lavrrsResponseStatus' - -- | The response status code.
listAssociationVersionsResponse ::
  -- | 'lavrrsResponseStatus'
  Int ->
  ListAssociationVersionsResponse
listAssociationVersionsResponse pResponseStatus_ =
  ListAssociationVersionsResponse'
    { _lavrrsNextToken =
        Nothing,
      _lavrrsAssociationVersions = Nothing,
      _lavrrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of items to return. Use this token to get the next set of results.
lavrrsNextToken :: Lens' ListAssociationVersionsResponse (Maybe Text)
lavrrsNextToken = lens _lavrrsNextToken (\s a -> s {_lavrrsNextToken = a})

-- | Information about all versions of the association for the specified association ID.
lavrrsAssociationVersions :: Lens' ListAssociationVersionsResponse (Maybe (NonEmpty AssociationVersionInfo))
lavrrsAssociationVersions = lens _lavrrsAssociationVersions (\s a -> s {_lavrrsAssociationVersions = a}) . mapping _List1

-- | -- | The response status code.
lavrrsResponseStatus :: Lens' ListAssociationVersionsResponse Int
lavrrsResponseStatus = lens _lavrrsResponseStatus (\s a -> s {_lavrrsResponseStatus = a})

instance NFData ListAssociationVersionsResponse
