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
-- Module      : Network.AWS.Glue.DeleteTableVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified version of a table.
module Network.AWS.Glue.DeleteTableVersion
  ( -- * Creating a Request
    deleteTableVersion,
    DeleteTableVersion,

    -- * Request Lenses
    dtvCatalogId,
    dtvDatabaseName,
    dtvTableName,
    dtvVersionId,

    -- * Destructuring the Response
    deleteTableVersionResponse,
    DeleteTableVersionResponse,

    -- * Response Lenses
    dtvrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteTableVersion' smart constructor.
data DeleteTableVersion = DeleteTableVersion'
  { _dtvCatalogId ::
      !(Maybe Text),
    _dtvDatabaseName :: !Text,
    _dtvTableName :: !Text,
    _dtvVersionId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteTableVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtvCatalogId' - The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default.
--
-- * 'dtvDatabaseName' - The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.
--
-- * 'dtvTableName' - The name of the table. For Hive compatibility, this name is entirely lowercase.
--
-- * 'dtvVersionId' - The ID of the table version to be deleted. A @VersionID@ is a string representation of an integer. Each version is incremented by 1.
deleteTableVersion ::
  -- | 'dtvDatabaseName'
  Text ->
  -- | 'dtvTableName'
  Text ->
  -- | 'dtvVersionId'
  Text ->
  DeleteTableVersion
deleteTableVersion
  pDatabaseName_
  pTableName_
  pVersionId_ =
    DeleteTableVersion'
      { _dtvCatalogId = Nothing,
        _dtvDatabaseName = pDatabaseName_,
        _dtvTableName = pTableName_,
        _dtvVersionId = pVersionId_
      }

-- | The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default.
dtvCatalogId :: Lens' DeleteTableVersion (Maybe Text)
dtvCatalogId = lens _dtvCatalogId (\s a -> s {_dtvCatalogId = a})

-- | The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.
dtvDatabaseName :: Lens' DeleteTableVersion Text
dtvDatabaseName = lens _dtvDatabaseName (\s a -> s {_dtvDatabaseName = a})

-- | The name of the table. For Hive compatibility, this name is entirely lowercase.
dtvTableName :: Lens' DeleteTableVersion Text
dtvTableName = lens _dtvTableName (\s a -> s {_dtvTableName = a})

-- | The ID of the table version to be deleted. A @VersionID@ is a string representation of an integer. Each version is incremented by 1.
dtvVersionId :: Lens' DeleteTableVersion Text
dtvVersionId = lens _dtvVersionId (\s a -> s {_dtvVersionId = a})

instance AWSRequest DeleteTableVersion where
  type
    Rs DeleteTableVersion =
      DeleteTableVersionResponse
  request = postJSON glue
  response =
    receiveEmpty
      ( \s h x ->
          DeleteTableVersionResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteTableVersion

instance NFData DeleteTableVersion

instance ToHeaders DeleteTableVersion where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.DeleteTableVersion" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteTableVersion where
  toJSON DeleteTableVersion' {..} =
    object
      ( catMaybes
          [ ("CatalogId" .=) <$> _dtvCatalogId,
            Just ("DatabaseName" .= _dtvDatabaseName),
            Just ("TableName" .= _dtvTableName),
            Just ("VersionId" .= _dtvVersionId)
          ]
      )

instance ToPath DeleteTableVersion where
  toPath = const "/"

instance ToQuery DeleteTableVersion where
  toQuery = const mempty

-- | /See:/ 'deleteTableVersionResponse' smart constructor.
newtype DeleteTableVersionResponse = DeleteTableVersionResponse'
  { _dtvrrsResponseStatus ::
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

-- | Creates a value of 'DeleteTableVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtvrrsResponseStatus' - -- | The response status code.
deleteTableVersionResponse ::
  -- | 'dtvrrsResponseStatus'
  Int ->
  DeleteTableVersionResponse
deleteTableVersionResponse pResponseStatus_ =
  DeleteTableVersionResponse'
    { _dtvrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dtvrrsResponseStatus :: Lens' DeleteTableVersionResponse Int
dtvrrsResponseStatus = lens _dtvrrsResponseStatus (\s a -> s {_dtvrrsResponseStatus = a})

instance NFData DeleteTableVersionResponse
