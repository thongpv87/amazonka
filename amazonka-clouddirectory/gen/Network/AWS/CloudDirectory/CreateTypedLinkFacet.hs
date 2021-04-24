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
-- Module      : Network.AWS.CloudDirectory.CreateTypedLinkFacet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a 'TypedLinkFacet' . For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links> .
module Network.AWS.CloudDirectory.CreateTypedLinkFacet
  ( -- * Creating a Request
    createTypedLinkFacet,
    CreateTypedLinkFacet,

    -- * Request Lenses
    ctlfSchemaARN,
    ctlfFacet,

    -- * Destructuring the Response
    createTypedLinkFacetResponse,
    CreateTypedLinkFacetResponse,

    -- * Response Lenses
    ctlfrrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createTypedLinkFacet' smart constructor.
data CreateTypedLinkFacet = CreateTypedLinkFacet'
  { _ctlfSchemaARN ::
      !Text,
    _ctlfFacet :: !TypedLinkFacet
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateTypedLinkFacet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctlfSchemaARN' - The Amazon Resource Name (ARN) that is associated with the schema. For more information, see 'arns' .
--
-- * 'ctlfFacet' - 'Facet' structure that is associated with the typed link facet.
createTypedLinkFacet ::
  -- | 'ctlfSchemaARN'
  Text ->
  -- | 'ctlfFacet'
  TypedLinkFacet ->
  CreateTypedLinkFacet
createTypedLinkFacet pSchemaARN_ pFacet_ =
  CreateTypedLinkFacet'
    { _ctlfSchemaARN = pSchemaARN_,
      _ctlfFacet = pFacet_
    }

-- | The Amazon Resource Name (ARN) that is associated with the schema. For more information, see 'arns' .
ctlfSchemaARN :: Lens' CreateTypedLinkFacet Text
ctlfSchemaARN = lens _ctlfSchemaARN (\s a -> s {_ctlfSchemaARN = a})

-- | 'Facet' structure that is associated with the typed link facet.
ctlfFacet :: Lens' CreateTypedLinkFacet TypedLinkFacet
ctlfFacet = lens _ctlfFacet (\s a -> s {_ctlfFacet = a})

instance AWSRequest CreateTypedLinkFacet where
  type
    Rs CreateTypedLinkFacet =
      CreateTypedLinkFacetResponse
  request = putJSON cloudDirectory
  response =
    receiveEmpty
      ( \s h x ->
          CreateTypedLinkFacetResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable CreateTypedLinkFacet

instance NFData CreateTypedLinkFacet

instance ToHeaders CreateTypedLinkFacet where
  toHeaders CreateTypedLinkFacet' {..} =
    mconcat ["x-amz-data-partition" =# _ctlfSchemaARN]

instance ToJSON CreateTypedLinkFacet where
  toJSON CreateTypedLinkFacet' {..} =
    object (catMaybes [Just ("Facet" .= _ctlfFacet)])

instance ToPath CreateTypedLinkFacet where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/typedlink/facet/create"

instance ToQuery CreateTypedLinkFacet where
  toQuery = const mempty

-- | /See:/ 'createTypedLinkFacetResponse' smart constructor.
newtype CreateTypedLinkFacetResponse = CreateTypedLinkFacetResponse'
  { _ctlfrrsResponseStatus ::
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

-- | Creates a value of 'CreateTypedLinkFacetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctlfrrsResponseStatus' - -- | The response status code.
createTypedLinkFacetResponse ::
  -- | 'ctlfrrsResponseStatus'
  Int ->
  CreateTypedLinkFacetResponse
createTypedLinkFacetResponse pResponseStatus_ =
  CreateTypedLinkFacetResponse'
    { _ctlfrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ctlfrrsResponseStatus :: Lens' CreateTypedLinkFacetResponse Int
ctlfrrsResponseStatus = lens _ctlfrrsResponseStatus (\s a -> s {_ctlfrrsResponseStatus = a})

instance NFData CreateTypedLinkFacetResponse
