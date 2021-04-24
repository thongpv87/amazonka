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
-- Module      : Network.AWS.Route53Domains.DeleteTagsForDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation deletes the specified tags for a domain.
--
--
-- All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.
module Network.AWS.Route53Domains.DeleteTagsForDomain
  ( -- * Creating a Request
    deleteTagsForDomain,
    DeleteTagsForDomain,

    -- * Request Lenses
    dtfdDomainName,
    dtfdTagsToDelete,

    -- * Destructuring the Response
    deleteTagsForDomainResponse,
    DeleteTagsForDomainResponse,

    -- * Response Lenses
    dtfdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53Domains.Types

-- | The DeleteTagsForDomainRequest includes the following elements.
--
--
--
-- /See:/ 'deleteTagsForDomain' smart constructor.
data DeleteTagsForDomain = DeleteTagsForDomain'
  { _dtfdDomainName ::
      !Text,
    _dtfdTagsToDelete :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteTagsForDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtfdDomainName' - The domain for which you want to delete one or more tags.
--
-- * 'dtfdTagsToDelete' - A list of tag keys to delete.
deleteTagsForDomain ::
  -- | 'dtfdDomainName'
  Text ->
  DeleteTagsForDomain
deleteTagsForDomain pDomainName_ =
  DeleteTagsForDomain'
    { _dtfdDomainName =
        pDomainName_,
      _dtfdTagsToDelete = mempty
    }

-- | The domain for which you want to delete one or more tags.
dtfdDomainName :: Lens' DeleteTagsForDomain Text
dtfdDomainName = lens _dtfdDomainName (\s a -> s {_dtfdDomainName = a})

-- | A list of tag keys to delete.
dtfdTagsToDelete :: Lens' DeleteTagsForDomain [Text]
dtfdTagsToDelete = lens _dtfdTagsToDelete (\s a -> s {_dtfdTagsToDelete = a}) . _Coerce

instance AWSRequest DeleteTagsForDomain where
  type
    Rs DeleteTagsForDomain =
      DeleteTagsForDomainResponse
  request = postJSON route53Domains
  response =
    receiveEmpty
      ( \s h x ->
          DeleteTagsForDomainResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteTagsForDomain

instance NFData DeleteTagsForDomain

instance ToHeaders DeleteTagsForDomain where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53Domains_v20140515.DeleteTagsForDomain" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteTagsForDomain where
  toJSON DeleteTagsForDomain' {..} =
    object
      ( catMaybes
          [ Just ("DomainName" .= _dtfdDomainName),
            Just ("TagsToDelete" .= _dtfdTagsToDelete)
          ]
      )

instance ToPath DeleteTagsForDomain where
  toPath = const "/"

instance ToQuery DeleteTagsForDomain where
  toQuery = const mempty

-- | /See:/ 'deleteTagsForDomainResponse' smart constructor.
newtype DeleteTagsForDomainResponse = DeleteTagsForDomainResponse'
  { _dtfdrrsResponseStatus ::
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

-- | Creates a value of 'DeleteTagsForDomainResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtfdrrsResponseStatus' - -- | The response status code.
deleteTagsForDomainResponse ::
  -- | 'dtfdrrsResponseStatus'
  Int ->
  DeleteTagsForDomainResponse
deleteTagsForDomainResponse pResponseStatus_ =
  DeleteTagsForDomainResponse'
    { _dtfdrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dtfdrrsResponseStatus :: Lens' DeleteTagsForDomainResponse Int
dtfdrrsResponseStatus = lens _dtfdrrsResponseStatus (\s a -> s {_dtfdrrsResponseStatus = a})

instance NFData DeleteTagsForDomainResponse
