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
-- Module      : Network.AWS.DeviceFarm.ListOfferingPromotions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of offering promotions. Each offering promotion record contains the ID and description of the promotion. The API returns a @NotEligible@ error if the caller is not permitted to invoke the operation. Contact <mailto:aws-devicefarm-support@amazon.com aws-devicefarm-support@amazon.com> if you must be able to invoke this operation.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListOfferingPromotions
  ( -- * Creating a Request
    listOfferingPromotions,
    ListOfferingPromotions,

    -- * Request Lenses
    lopNextToken,

    -- * Destructuring the Response
    listOfferingPromotionsResponse,
    ListOfferingPromotionsResponse,

    -- * Response Lenses
    loprrsNextToken,
    loprrsOfferingPromotions,
    loprrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listOfferingPromotions' smart constructor.
newtype ListOfferingPromotions = ListOfferingPromotions'
  { _lopNextToken ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListOfferingPromotions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lopNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
listOfferingPromotions ::
  ListOfferingPromotions
listOfferingPromotions =
  ListOfferingPromotions' {_lopNextToken = Nothing}

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lopNextToken :: Lens' ListOfferingPromotions (Maybe Text)
lopNextToken = lens _lopNextToken (\s a -> s {_lopNextToken = a})

instance AWSPager ListOfferingPromotions where
  page rq rs
    | stop (rs ^. loprrsNextToken) = Nothing
    | stop (rs ^. loprrsOfferingPromotions) = Nothing
    | otherwise =
      Just $ rq & lopNextToken .~ rs ^. loprrsNextToken

instance AWSRequest ListOfferingPromotions where
  type
    Rs ListOfferingPromotions =
      ListOfferingPromotionsResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          ListOfferingPromotionsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "offeringPromotions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListOfferingPromotions

instance NFData ListOfferingPromotions

instance ToHeaders ListOfferingPromotions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.ListOfferingPromotions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListOfferingPromotions where
  toJSON ListOfferingPromotions' {..} =
    object
      (catMaybes [("nextToken" .=) <$> _lopNextToken])

instance ToPath ListOfferingPromotions where
  toPath = const "/"

instance ToQuery ListOfferingPromotions where
  toQuery = const mempty

-- | /See:/ 'listOfferingPromotionsResponse' smart constructor.
data ListOfferingPromotionsResponse = ListOfferingPromotionsResponse'
  { _loprrsNextToken ::
      !( Maybe
           Text
       ),
    _loprrsOfferingPromotions ::
      !( Maybe
           [OfferingPromotion]
       ),
    _loprrsResponseStatus ::
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

-- | Creates a value of 'ListOfferingPromotionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loprrsNextToken' - An identifier to be used in the next call to this operation, to return the next set of items in the list.
--
-- * 'loprrsOfferingPromotions' - Information about the offering promotions.
--
-- * 'loprrsResponseStatus' - -- | The response status code.
listOfferingPromotionsResponse ::
  -- | 'loprrsResponseStatus'
  Int ->
  ListOfferingPromotionsResponse
listOfferingPromotionsResponse pResponseStatus_ =
  ListOfferingPromotionsResponse'
    { _loprrsNextToken =
        Nothing,
      _loprrsOfferingPromotions = Nothing,
      _loprrsResponseStatus = pResponseStatus_
    }

-- | An identifier to be used in the next call to this operation, to return the next set of items in the list.
loprrsNextToken :: Lens' ListOfferingPromotionsResponse (Maybe Text)
loprrsNextToken = lens _loprrsNextToken (\s a -> s {_loprrsNextToken = a})

-- | Information about the offering promotions.
loprrsOfferingPromotions :: Lens' ListOfferingPromotionsResponse [OfferingPromotion]
loprrsOfferingPromotions = lens _loprrsOfferingPromotions (\s a -> s {_loprrsOfferingPromotions = a}) . _Default . _Coerce

-- | -- | The response status code.
loprrsResponseStatus :: Lens' ListOfferingPromotionsResponse Int
loprrsResponseStatus = lens _loprrsResponseStatus (\s a -> s {_loprrsResponseStatus = a})

instance NFData ListOfferingPromotionsResponse
