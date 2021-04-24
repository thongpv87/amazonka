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
-- Module      : Network.AWS.WAF.ListSqlInjectionMatchSets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of 'SqlInjectionMatchSet' objects.
--
--
--
-- This operation returns paginated results.
module Network.AWS.WAF.ListSqlInjectionMatchSets
  ( -- * Creating a Request
    listSqlInjectionMatchSets,
    ListSqlInjectionMatchSets,

    -- * Request Lenses
    lsimsNextMarker,
    lsimsLimit,

    -- * Destructuring the Response
    listSqlInjectionMatchSetsResponse,
    ListSqlInjectionMatchSetsResponse,

    -- * Response Lenses
    lsimsrrsSqlInjectionMatchSets,
    lsimsrrsNextMarker,
    lsimsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAF.Types

-- | A request to list the 'SqlInjectionMatchSet' objects created by the current AWS account.
--
--
--
-- /See:/ 'listSqlInjectionMatchSets' smart constructor.
data ListSqlInjectionMatchSets = ListSqlInjectionMatchSets'
  { _lsimsNextMarker ::
      !(Maybe Text),
    _lsimsLimit ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListSqlInjectionMatchSets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsimsNextMarker' - If you specify a value for @Limit@ and you have more 'SqlInjectionMatchSet' objects than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @SqlInjectionMatchSets@ . For the second and subsequent @ListSqlInjectionMatchSets@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @SqlInjectionMatchSets@ .
--
-- * 'lsimsLimit' - Specifies the number of 'SqlInjectionMatchSet' objects that you want AWS WAF to return for this request. If you have more @SqlInjectionMatchSet@ objects than the number you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @Rules@ .
listSqlInjectionMatchSets ::
  ListSqlInjectionMatchSets
listSqlInjectionMatchSets =
  ListSqlInjectionMatchSets'
    { _lsimsNextMarker =
        Nothing,
      _lsimsLimit = Nothing
    }

-- | If you specify a value for @Limit@ and you have more 'SqlInjectionMatchSet' objects than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @SqlInjectionMatchSets@ . For the second and subsequent @ListSqlInjectionMatchSets@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @SqlInjectionMatchSets@ .
lsimsNextMarker :: Lens' ListSqlInjectionMatchSets (Maybe Text)
lsimsNextMarker = lens _lsimsNextMarker (\s a -> s {_lsimsNextMarker = a})

-- | Specifies the number of 'SqlInjectionMatchSet' objects that you want AWS WAF to return for this request. If you have more @SqlInjectionMatchSet@ objects than the number you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @Rules@ .
lsimsLimit :: Lens' ListSqlInjectionMatchSets (Maybe Natural)
lsimsLimit = lens _lsimsLimit (\s a -> s {_lsimsLimit = a}) . mapping _Nat

instance AWSPager ListSqlInjectionMatchSets where
  page rq rs
    | stop (rs ^. lsimsrrsNextMarker) = Nothing
    | stop (rs ^. lsimsrrsSqlInjectionMatchSets) =
      Nothing
    | otherwise =
      Just $
        rq
          & lsimsNextMarker .~ rs ^. lsimsrrsNextMarker

instance AWSRequest ListSqlInjectionMatchSets where
  type
    Rs ListSqlInjectionMatchSets =
      ListSqlInjectionMatchSetsResponse
  request = postJSON waf
  response =
    receiveJSON
      ( \s h x ->
          ListSqlInjectionMatchSetsResponse'
            <$> (x .?> "SqlInjectionMatchSets" .!@ mempty)
            <*> (x .?> "NextMarker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListSqlInjectionMatchSets

instance NFData ListSqlInjectionMatchSets

instance ToHeaders ListSqlInjectionMatchSets where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_20150824.ListSqlInjectionMatchSets" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListSqlInjectionMatchSets where
  toJSON ListSqlInjectionMatchSets' {..} =
    object
      ( catMaybes
          [ ("NextMarker" .=) <$> _lsimsNextMarker,
            ("Limit" .=) <$> _lsimsLimit
          ]
      )

instance ToPath ListSqlInjectionMatchSets where
  toPath = const "/"

instance ToQuery ListSqlInjectionMatchSets where
  toQuery = const mempty

-- | The response to a 'ListSqlInjectionMatchSets' request.
--
--
--
-- /See:/ 'listSqlInjectionMatchSetsResponse' smart constructor.
data ListSqlInjectionMatchSetsResponse = ListSqlInjectionMatchSetsResponse'
  { _lsimsrrsSqlInjectionMatchSets ::
      !( Maybe
           [SqlInjectionMatchSetSummary]
       ),
    _lsimsrrsNextMarker ::
      !( Maybe
           Text
       ),
    _lsimsrrsResponseStatus ::
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

-- | Creates a value of 'ListSqlInjectionMatchSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsimsrrsSqlInjectionMatchSets' - An array of 'SqlInjectionMatchSetSummary' objects.
--
-- * 'lsimsrrsNextMarker' - If you have more 'SqlInjectionMatchSet' objects than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @SqlInjectionMatchSet@ objects, submit another @ListSqlInjectionMatchSets@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
--
-- * 'lsimsrrsResponseStatus' - -- | The response status code.
listSqlInjectionMatchSetsResponse ::
  -- | 'lsimsrrsResponseStatus'
  Int ->
  ListSqlInjectionMatchSetsResponse
listSqlInjectionMatchSetsResponse pResponseStatus_ =
  ListSqlInjectionMatchSetsResponse'
    { _lsimsrrsSqlInjectionMatchSets =
        Nothing,
      _lsimsrrsNextMarker = Nothing,
      _lsimsrrsResponseStatus =
        pResponseStatus_
    }

-- | An array of 'SqlInjectionMatchSetSummary' objects.
lsimsrrsSqlInjectionMatchSets :: Lens' ListSqlInjectionMatchSetsResponse [SqlInjectionMatchSetSummary]
lsimsrrsSqlInjectionMatchSets = lens _lsimsrrsSqlInjectionMatchSets (\s a -> s {_lsimsrrsSqlInjectionMatchSets = a}) . _Default . _Coerce

-- | If you have more 'SqlInjectionMatchSet' objects than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @SqlInjectionMatchSet@ objects, submit another @ListSqlInjectionMatchSets@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
lsimsrrsNextMarker :: Lens' ListSqlInjectionMatchSetsResponse (Maybe Text)
lsimsrrsNextMarker = lens _lsimsrrsNextMarker (\s a -> s {_lsimsrrsNextMarker = a})

-- | -- | The response status code.
lsimsrrsResponseStatus :: Lens' ListSqlInjectionMatchSetsResponse Int
lsimsrrsResponseStatus = lens _lsimsrrsResponseStatus (\s a -> s {_lsimsrrsResponseStatus = a})

instance NFData ListSqlInjectionMatchSetsResponse
