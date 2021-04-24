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
-- Module      : Network.AWS.Glue.UpdatePartition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a partition.
module Network.AWS.Glue.UpdatePartition
  ( -- * Creating a Request
    updatePartition,
    UpdatePartition,

    -- * Request Lenses
    upCatalogId,
    upDatabaseName,
    upTableName,
    upPartitionValueList,
    upPartitionInput,

    -- * Destructuring the Response
    updatePartitionResponse,
    UpdatePartitionResponse,

    -- * Response Lenses
    uprrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updatePartition' smart constructor.
data UpdatePartition = UpdatePartition'
  { _upCatalogId ::
      !(Maybe Text),
    _upDatabaseName :: !Text,
    _upTableName :: !Text,
    _upPartitionValueList :: ![Text],
    _upPartitionInput :: !PartitionInput
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdatePartition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upCatalogId' - The ID of the Data Catalog where the partition to be updated resides. If none is provided, the AWS account ID is used by default.
--
-- * 'upDatabaseName' - The name of the catalog database in which the table in question resides.
--
-- * 'upTableName' - The name of the table in which the partition to be updated is located.
--
-- * 'upPartitionValueList' - List of partition key values that define the partition to update.
--
-- * 'upPartitionInput' - The new partition object to update the partition to. The @Values@ property can't be changed. If you want to change the partition key values for a partition, delete and recreate the partition.
updatePartition ::
  -- | 'upDatabaseName'
  Text ->
  -- | 'upTableName'
  Text ->
  -- | 'upPartitionInput'
  PartitionInput ->
  UpdatePartition
updatePartition
  pDatabaseName_
  pTableName_
  pPartitionInput_ =
    UpdatePartition'
      { _upCatalogId = Nothing,
        _upDatabaseName = pDatabaseName_,
        _upTableName = pTableName_,
        _upPartitionValueList = mempty,
        _upPartitionInput = pPartitionInput_
      }

-- | The ID of the Data Catalog where the partition to be updated resides. If none is provided, the AWS account ID is used by default.
upCatalogId :: Lens' UpdatePartition (Maybe Text)
upCatalogId = lens _upCatalogId (\s a -> s {_upCatalogId = a})

-- | The name of the catalog database in which the table in question resides.
upDatabaseName :: Lens' UpdatePartition Text
upDatabaseName = lens _upDatabaseName (\s a -> s {_upDatabaseName = a})

-- | The name of the table in which the partition to be updated is located.
upTableName :: Lens' UpdatePartition Text
upTableName = lens _upTableName (\s a -> s {_upTableName = a})

-- | List of partition key values that define the partition to update.
upPartitionValueList :: Lens' UpdatePartition [Text]
upPartitionValueList = lens _upPartitionValueList (\s a -> s {_upPartitionValueList = a}) . _Coerce

-- | The new partition object to update the partition to. The @Values@ property can't be changed. If you want to change the partition key values for a partition, delete and recreate the partition.
upPartitionInput :: Lens' UpdatePartition PartitionInput
upPartitionInput = lens _upPartitionInput (\s a -> s {_upPartitionInput = a})

instance AWSRequest UpdatePartition where
  type Rs UpdatePartition = UpdatePartitionResponse
  request = postJSON glue
  response =
    receiveEmpty
      ( \s h x ->
          UpdatePartitionResponse' <$> (pure (fromEnum s))
      )

instance Hashable UpdatePartition

instance NFData UpdatePartition

instance ToHeaders UpdatePartition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.UpdatePartition" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdatePartition where
  toJSON UpdatePartition' {..} =
    object
      ( catMaybes
          [ ("CatalogId" .=) <$> _upCatalogId,
            Just ("DatabaseName" .= _upDatabaseName),
            Just ("TableName" .= _upTableName),
            Just ("PartitionValueList" .= _upPartitionValueList),
            Just ("PartitionInput" .= _upPartitionInput)
          ]
      )

instance ToPath UpdatePartition where
  toPath = const "/"

instance ToQuery UpdatePartition where
  toQuery = const mempty

-- | /See:/ 'updatePartitionResponse' smart constructor.
newtype UpdatePartitionResponse = UpdatePartitionResponse'
  { _uprrsResponseStatus ::
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

-- | Creates a value of 'UpdatePartitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uprrsResponseStatus' - -- | The response status code.
updatePartitionResponse ::
  -- | 'uprrsResponseStatus'
  Int ->
  UpdatePartitionResponse
updatePartitionResponse pResponseStatus_ =
  UpdatePartitionResponse'
    { _uprrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
uprrsResponseStatus :: Lens' UpdatePartitionResponse Int
uprrsResponseStatus = lens _uprrsResponseStatus (\s a -> s {_uprrsResponseStatus = a})

instance NFData UpdatePartitionResponse
