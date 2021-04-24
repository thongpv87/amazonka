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
-- Module      : Network.AWS.Glue.BatchGetCrawlers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of resource metadata for a given list of crawler names. After calling the @ListCrawlers@ operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.
module Network.AWS.Glue.BatchGetCrawlers
  ( -- * Creating a Request
    batchGetCrawlers,
    BatchGetCrawlers,

    -- * Request Lenses
    bgcCrawlerNames,

    -- * Destructuring the Response
    batchGetCrawlersResponse,
    BatchGetCrawlersResponse,

    -- * Response Lenses
    bgcrrsCrawlers,
    bgcrrsCrawlersNotFound,
    bgcrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchGetCrawlers' smart constructor.
newtype BatchGetCrawlers = BatchGetCrawlers'
  { _bgcCrawlerNames ::
      [Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchGetCrawlers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgcCrawlerNames' - A list of crawler names, which might be the names returned from the @ListCrawlers@ operation.
batchGetCrawlers ::
  BatchGetCrawlers
batchGetCrawlers =
  BatchGetCrawlers' {_bgcCrawlerNames = mempty}

-- | A list of crawler names, which might be the names returned from the @ListCrawlers@ operation.
bgcCrawlerNames :: Lens' BatchGetCrawlers [Text]
bgcCrawlerNames = lens _bgcCrawlerNames (\s a -> s {_bgcCrawlerNames = a}) . _Coerce

instance AWSRequest BatchGetCrawlers where
  type Rs BatchGetCrawlers = BatchGetCrawlersResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          BatchGetCrawlersResponse'
            <$> (x .?> "Crawlers" .!@ mempty)
            <*> (x .?> "CrawlersNotFound" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable BatchGetCrawlers

instance NFData BatchGetCrawlers

instance ToHeaders BatchGetCrawlers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.BatchGetCrawlers" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchGetCrawlers where
  toJSON BatchGetCrawlers' {..} =
    object
      ( catMaybes
          [Just ("CrawlerNames" .= _bgcCrawlerNames)]
      )

instance ToPath BatchGetCrawlers where
  toPath = const "/"

instance ToQuery BatchGetCrawlers where
  toQuery = const mempty

-- | /See:/ 'batchGetCrawlersResponse' smart constructor.
data BatchGetCrawlersResponse = BatchGetCrawlersResponse'
  { _bgcrrsCrawlers ::
      !(Maybe [Crawler]),
    _bgcrrsCrawlersNotFound ::
      !(Maybe [Text]),
    _bgcrrsResponseStatus ::
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

-- | Creates a value of 'BatchGetCrawlersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgcrrsCrawlers' - A list of crawler definitions.
--
-- * 'bgcrrsCrawlersNotFound' - A list of names of crawlers that were not found.
--
-- * 'bgcrrsResponseStatus' - -- | The response status code.
batchGetCrawlersResponse ::
  -- | 'bgcrrsResponseStatus'
  Int ->
  BatchGetCrawlersResponse
batchGetCrawlersResponse pResponseStatus_ =
  BatchGetCrawlersResponse'
    { _bgcrrsCrawlers =
        Nothing,
      _bgcrrsCrawlersNotFound = Nothing,
      _bgcrrsResponseStatus = pResponseStatus_
    }

-- | A list of crawler definitions.
bgcrrsCrawlers :: Lens' BatchGetCrawlersResponse [Crawler]
bgcrrsCrawlers = lens _bgcrrsCrawlers (\s a -> s {_bgcrrsCrawlers = a}) . _Default . _Coerce

-- | A list of names of crawlers that were not found.
bgcrrsCrawlersNotFound :: Lens' BatchGetCrawlersResponse [Text]
bgcrrsCrawlersNotFound = lens _bgcrrsCrawlersNotFound (\s a -> s {_bgcrrsCrawlersNotFound = a}) . _Default . _Coerce

-- | -- | The response status code.
bgcrrsResponseStatus :: Lens' BatchGetCrawlersResponse Int
bgcrrsResponseStatus = lens _bgcrrsResponseStatus (\s a -> s {_bgcrrsResponseStatus = a})

instance NFData BatchGetCrawlersResponse
