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
-- Module      : Network.AWS.WAF.ListGeoMatchSets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of 'GeoMatchSetSummary' objects in the response.
--
--
--
-- This operation returns paginated results.
module Network.AWS.WAF.ListGeoMatchSets
  ( -- * Creating a Request
    listGeoMatchSets,
    ListGeoMatchSets,

    -- * Request Lenses
    lgmsNextMarker,
    lgmsLimit,

    -- * Destructuring the Response
    listGeoMatchSetsResponse,
    ListGeoMatchSetsResponse,

    -- * Response Lenses
    lgmsrrsGeoMatchSets,
    lgmsrrsNextMarker,
    lgmsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAF.Types

-- | /See:/ 'listGeoMatchSets' smart constructor.
data ListGeoMatchSets = ListGeoMatchSets'
  { _lgmsNextMarker ::
      !(Maybe Text),
    _lgmsLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListGeoMatchSets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgmsNextMarker' - If you specify a value for @Limit@ and you have more @GeoMatchSet@ s than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @GeoMatchSet@ objects. For the second and subsequent @ListGeoMatchSets@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @GeoMatchSet@ objects.
--
-- * 'lgmsLimit' - Specifies the number of @GeoMatchSet@ objects that you want AWS WAF to return for this request. If you have more @GeoMatchSet@ objects than the number you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @GeoMatchSet@ objects.
listGeoMatchSets ::
  ListGeoMatchSets
listGeoMatchSets =
  ListGeoMatchSets'
    { _lgmsNextMarker = Nothing,
      _lgmsLimit = Nothing
    }

-- | If you specify a value for @Limit@ and you have more @GeoMatchSet@ s than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @GeoMatchSet@ objects. For the second and subsequent @ListGeoMatchSets@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @GeoMatchSet@ objects.
lgmsNextMarker :: Lens' ListGeoMatchSets (Maybe Text)
lgmsNextMarker = lens _lgmsNextMarker (\s a -> s {_lgmsNextMarker = a})

-- | Specifies the number of @GeoMatchSet@ objects that you want AWS WAF to return for this request. If you have more @GeoMatchSet@ objects than the number you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @GeoMatchSet@ objects.
lgmsLimit :: Lens' ListGeoMatchSets (Maybe Natural)
lgmsLimit = lens _lgmsLimit (\s a -> s {_lgmsLimit = a}) . mapping _Nat

instance AWSPager ListGeoMatchSets where
  page rq rs
    | stop (rs ^. lgmsrrsNextMarker) = Nothing
    | stop (rs ^. lgmsrrsGeoMatchSets) = Nothing
    | otherwise =
      Just $ rq & lgmsNextMarker .~ rs ^. lgmsrrsNextMarker

instance AWSRequest ListGeoMatchSets where
  type Rs ListGeoMatchSets = ListGeoMatchSetsResponse
  request = postJSON waf
  response =
    receiveJSON
      ( \s h x ->
          ListGeoMatchSetsResponse'
            <$> (x .?> "GeoMatchSets" .!@ mempty)
            <*> (x .?> "NextMarker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListGeoMatchSets

instance NFData ListGeoMatchSets

instance ToHeaders ListGeoMatchSets where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSWAF_20150824.ListGeoMatchSets" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListGeoMatchSets where
  toJSON ListGeoMatchSets' {..} =
    object
      ( catMaybes
          [ ("NextMarker" .=) <$> _lgmsNextMarker,
            ("Limit" .=) <$> _lgmsLimit
          ]
      )

instance ToPath ListGeoMatchSets where
  toPath = const "/"

instance ToQuery ListGeoMatchSets where
  toQuery = const mempty

-- | /See:/ 'listGeoMatchSetsResponse' smart constructor.
data ListGeoMatchSetsResponse = ListGeoMatchSetsResponse'
  { _lgmsrrsGeoMatchSets ::
      !( Maybe
           [GeoMatchSetSummary]
       ),
    _lgmsrrsNextMarker ::
      !(Maybe Text),
    _lgmsrrsResponseStatus ::
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

-- | Creates a value of 'ListGeoMatchSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgmsrrsGeoMatchSets' - An array of 'GeoMatchSetSummary' objects.
--
-- * 'lgmsrrsNextMarker' - If you have more @GeoMatchSet@ objects than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @GeoMatchSet@ objects, submit another @ListGeoMatchSets@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
--
-- * 'lgmsrrsResponseStatus' - -- | The response status code.
listGeoMatchSetsResponse ::
  -- | 'lgmsrrsResponseStatus'
  Int ->
  ListGeoMatchSetsResponse
listGeoMatchSetsResponse pResponseStatus_ =
  ListGeoMatchSetsResponse'
    { _lgmsrrsGeoMatchSets =
        Nothing,
      _lgmsrrsNextMarker = Nothing,
      _lgmsrrsResponseStatus = pResponseStatus_
    }

-- | An array of 'GeoMatchSetSummary' objects.
lgmsrrsGeoMatchSets :: Lens' ListGeoMatchSetsResponse [GeoMatchSetSummary]
lgmsrrsGeoMatchSets = lens _lgmsrrsGeoMatchSets (\s a -> s {_lgmsrrsGeoMatchSets = a}) . _Default . _Coerce

-- | If you have more @GeoMatchSet@ objects than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @GeoMatchSet@ objects, submit another @ListGeoMatchSets@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
lgmsrrsNextMarker :: Lens' ListGeoMatchSetsResponse (Maybe Text)
lgmsrrsNextMarker = lens _lgmsrrsNextMarker (\s a -> s {_lgmsrrsNextMarker = a})

-- | -- | The response status code.
lgmsrrsResponseStatus :: Lens' ListGeoMatchSetsResponse Int
lgmsrrsResponseStatus = lens _lgmsrrsResponseStatus (\s a -> s {_lgmsrrsResponseStatus = a})

instance NFData ListGeoMatchSetsResponse
