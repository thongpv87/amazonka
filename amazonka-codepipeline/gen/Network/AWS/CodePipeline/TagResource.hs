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
-- Module      : Network.AWS.CodePipeline.TagResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.
module Network.AWS.CodePipeline.TagResource
  ( -- * Creating a Request
    tagResource,
    TagResource,

    -- * Request Lenses
    trResourceARN,
    trTags,

    -- * Destructuring the Response
    tagResourceResponse,
    TagResourceResponse,

    -- * Response Lenses
    trrrsResponseStatus,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'tagResource' smart constructor.
data TagResource = TagResource'
  { _trResourceARN ::
      !Text,
    _trTags :: ![Tag]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trResourceARN' - The Amazon Resource Name (ARN) of the resource you want to add tags to.
--
-- * 'trTags' - The tags you want to modify or add to the resource.
tagResource ::
  -- | 'trResourceARN'
  Text ->
  TagResource
tagResource pResourceARN_ =
  TagResource'
    { _trResourceARN = pResourceARN_,
      _trTags = mempty
    }

-- | The Amazon Resource Name (ARN) of the resource you want to add tags to.
trResourceARN :: Lens' TagResource Text
trResourceARN = lens _trResourceARN (\s a -> s {_trResourceARN = a})

-- | The tags you want to modify or add to the resource.
trTags :: Lens' TagResource [Tag]
trTags = lens _trTags (\s a -> s {_trTags = a}) . _Coerce

instance AWSRequest TagResource where
  type Rs TagResource = TagResourceResponse
  request = postJSON codePipeline
  response =
    receiveEmpty
      ( \s h x ->
          TagResourceResponse' <$> (pure (fromEnum s))
      )

instance Hashable TagResource

instance NFData TagResource

instance ToHeaders TagResource where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodePipeline_20150709.TagResource" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON TagResource where
  toJSON TagResource' {..} =
    object
      ( catMaybes
          [ Just ("resourceArn" .= _trResourceARN),
            Just ("tags" .= _trTags)
          ]
      )

instance ToPath TagResource where
  toPath = const "/"

instance ToQuery TagResource where
  toQuery = const mempty

-- | /See:/ 'tagResourceResponse' smart constructor.
newtype TagResourceResponse = TagResourceResponse'
  { _trrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TagResourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trrrsResponseStatus' - -- | The response status code.
tagResourceResponse ::
  -- | 'trrrsResponseStatus'
  Int ->
  TagResourceResponse
tagResourceResponse pResponseStatus_ =
  TagResourceResponse'
    { _trrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
trrrsResponseStatus :: Lens' TagResourceResponse Int
trrrsResponseStatus = lens _trrrsResponseStatus (\s a -> s {_trrrsResponseStatus = a})

instance NFData TagResourceResponse
