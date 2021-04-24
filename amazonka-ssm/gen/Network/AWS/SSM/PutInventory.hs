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
-- Module      : Network.AWS.SSM.PutInventory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Bulk update custom inventory items on one more instance. The request adds an inventory item, if it doesn't already exist, or updates an inventory item, if it does exist.
module Network.AWS.SSM.PutInventory
  ( -- * Creating a Request
    putInventory,
    PutInventory,

    -- * Request Lenses
    piInstanceId,
    piItems,

    -- * Destructuring the Response
    putInventoryResponse,
    PutInventoryResponse,

    -- * Response Lenses
    pirrsMessage,
    pirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'putInventory' smart constructor.
data PutInventory = PutInventory'
  { _piInstanceId ::
      !Text,
    _piItems :: !(List1 InventoryItem)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutInventory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piInstanceId' - An instance ID where you want to add or update inventory items.
--
-- * 'piItems' - The inventory items that you want to add or update on instances.
putInventory ::
  -- | 'piInstanceId'
  Text ->
  -- | 'piItems'
  NonEmpty InventoryItem ->
  PutInventory
putInventory pInstanceId_ pItems_ =
  PutInventory'
    { _piInstanceId = pInstanceId_,
      _piItems = _List1 # pItems_
    }

-- | An instance ID where you want to add or update inventory items.
piInstanceId :: Lens' PutInventory Text
piInstanceId = lens _piInstanceId (\s a -> s {_piInstanceId = a})

-- | The inventory items that you want to add or update on instances.
piItems :: Lens' PutInventory (NonEmpty InventoryItem)
piItems = lens _piItems (\s a -> s {_piItems = a}) . _List1

instance AWSRequest PutInventory where
  type Rs PutInventory = PutInventoryResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          PutInventoryResponse'
            <$> (x .?> "Message") <*> (pure (fromEnum s))
      )

instance Hashable PutInventory

instance NFData PutInventory

instance ToHeaders PutInventory where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.PutInventory" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutInventory where
  toJSON PutInventory' {..} =
    object
      ( catMaybes
          [ Just ("InstanceId" .= _piInstanceId),
            Just ("Items" .= _piItems)
          ]
      )

instance ToPath PutInventory where
  toPath = const "/"

instance ToQuery PutInventory where
  toQuery = const mempty

-- | /See:/ 'putInventoryResponse' smart constructor.
data PutInventoryResponse = PutInventoryResponse'
  { _pirrsMessage ::
      !(Maybe Text),
    _pirrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutInventoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pirrsMessage' - Information about the request.
--
-- * 'pirrsResponseStatus' - -- | The response status code.
putInventoryResponse ::
  -- | 'pirrsResponseStatus'
  Int ->
  PutInventoryResponse
putInventoryResponse pResponseStatus_ =
  PutInventoryResponse'
    { _pirrsMessage = Nothing,
      _pirrsResponseStatus = pResponseStatus_
    }

-- | Information about the request.
pirrsMessage :: Lens' PutInventoryResponse (Maybe Text)
pirrsMessage = lens _pirrsMessage (\s a -> s {_pirrsMessage = a})

-- | -- | The response status code.
pirrsResponseStatus :: Lens' PutInventoryResponse Int
pirrsResponseStatus = lens _pirrsResponseStatus (\s a -> s {_pirrsResponseStatus = a})

instance NFData PutInventoryResponse
