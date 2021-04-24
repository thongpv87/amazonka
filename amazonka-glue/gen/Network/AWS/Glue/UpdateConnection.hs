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
-- Module      : Network.AWS.Glue.UpdateConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a connection definition in the Data Catalog.
module Network.AWS.Glue.UpdateConnection
  ( -- * Creating a Request
    updateConnection,
    UpdateConnection,

    -- * Request Lenses
    ucCatalogId,
    ucName,
    ucConnectionInput,

    -- * Destructuring the Response
    updateConnectionResponse,
    UpdateConnectionResponse,

    -- * Response Lenses
    ucrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateConnection' smart constructor.
data UpdateConnection = UpdateConnection'
  { _ucCatalogId ::
      !(Maybe Text),
    _ucName :: !Text,
    _ucConnectionInput ::
      !ConnectionInput
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucCatalogId' - The ID of the Data Catalog in which the connection resides. If none is provided, the AWS account ID is used by default.
--
-- * 'ucName' - The name of the connection definition to update.
--
-- * 'ucConnectionInput' - A @ConnectionInput@ object that redefines the connection in question.
updateConnection ::
  -- | 'ucName'
  Text ->
  -- | 'ucConnectionInput'
  ConnectionInput ->
  UpdateConnection
updateConnection pName_ pConnectionInput_ =
  UpdateConnection'
    { _ucCatalogId = Nothing,
      _ucName = pName_,
      _ucConnectionInput = pConnectionInput_
    }

-- | The ID of the Data Catalog in which the connection resides. If none is provided, the AWS account ID is used by default.
ucCatalogId :: Lens' UpdateConnection (Maybe Text)
ucCatalogId = lens _ucCatalogId (\s a -> s {_ucCatalogId = a})

-- | The name of the connection definition to update.
ucName :: Lens' UpdateConnection Text
ucName = lens _ucName (\s a -> s {_ucName = a})

-- | A @ConnectionInput@ object that redefines the connection in question.
ucConnectionInput :: Lens' UpdateConnection ConnectionInput
ucConnectionInput = lens _ucConnectionInput (\s a -> s {_ucConnectionInput = a})

instance AWSRequest UpdateConnection where
  type Rs UpdateConnection = UpdateConnectionResponse
  request = postJSON glue
  response =
    receiveEmpty
      ( \s h x ->
          UpdateConnectionResponse' <$> (pure (fromEnum s))
      )

instance Hashable UpdateConnection

instance NFData UpdateConnection

instance ToHeaders UpdateConnection where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.UpdateConnection" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateConnection where
  toJSON UpdateConnection' {..} =
    object
      ( catMaybes
          [ ("CatalogId" .=) <$> _ucCatalogId,
            Just ("Name" .= _ucName),
            Just ("ConnectionInput" .= _ucConnectionInput)
          ]
      )

instance ToPath UpdateConnection where
  toPath = const "/"

instance ToQuery UpdateConnection where
  toQuery = const mempty

-- | /See:/ 'updateConnectionResponse' smart constructor.
newtype UpdateConnectionResponse = UpdateConnectionResponse'
  { _ucrrsResponseStatus ::
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

-- | Creates a value of 'UpdateConnectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucrrsResponseStatus' - -- | The response status code.
updateConnectionResponse ::
  -- | 'ucrrsResponseStatus'
  Int ->
  UpdateConnectionResponse
updateConnectionResponse pResponseStatus_ =
  UpdateConnectionResponse'
    { _ucrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ucrrsResponseStatus :: Lens' UpdateConnectionResponse Int
ucrrsResponseStatus = lens _ucrrsResponseStatus (\s a -> s {_ucrrsResponseStatus = a})

instance NFData UpdateConnectionResponse
