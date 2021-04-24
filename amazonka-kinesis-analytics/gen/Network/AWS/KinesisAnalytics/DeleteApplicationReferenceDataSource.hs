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
-- Module      : Network.AWS.KinesisAnalytics.DeleteApplicationReferenceDataSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a reference data source configuration from the specified application configuration.
--
--
-- If the application is running, Amazon Kinesis Analytics immediately removes the in-application table that you created using the <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html AddApplicationReferenceDataSource> operation.
--
-- This operation requires permissions to perform the @kinesisanalytics.DeleteApplicationReferenceDataSource@ action.
module Network.AWS.KinesisAnalytics.DeleteApplicationReferenceDataSource
  ( -- * Creating a Request
    deleteApplicationReferenceDataSource,
    DeleteApplicationReferenceDataSource,

    -- * Request Lenses
    dardsApplicationName,
    dardsCurrentApplicationVersionId,
    dardsReferenceId,

    -- * Destructuring the Response
    deleteApplicationReferenceDataSourceResponse,
    DeleteApplicationReferenceDataSourceResponse,

    -- * Response Lenses
    dardsrrsResponseStatus,
  )
where

import Network.AWS.KinesisAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteApplicationReferenceDataSource' smart constructor.
data DeleteApplicationReferenceDataSource = DeleteApplicationReferenceDataSource'
  { _dardsApplicationName ::
      !Text,
    _dardsCurrentApplicationVersionId ::
      !Nat,
    _dardsReferenceId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteApplicationReferenceDataSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dardsApplicationName' - Name of an existing application.
--
-- * 'dardsCurrentApplicationVersionId' - Version of the application. You can use the <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication> operation to get the current application version. If the version specified is not the current version, the @ConcurrentModificationException@ is returned.
--
-- * 'dardsReferenceId' - ID of the reference data source. When you add a reference data source to your application using the <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html AddApplicationReferenceDataSource> , Amazon Kinesis Analytics assigns an ID. You can use the <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication> operation to get the reference ID.
deleteApplicationReferenceDataSource ::
  -- | 'dardsApplicationName'
  Text ->
  -- | 'dardsCurrentApplicationVersionId'
  Natural ->
  -- | 'dardsReferenceId'
  Text ->
  DeleteApplicationReferenceDataSource
deleteApplicationReferenceDataSource
  pApplicationName_
  pCurrentApplicationVersionId_
  pReferenceId_ =
    DeleteApplicationReferenceDataSource'
      { _dardsApplicationName =
          pApplicationName_,
        _dardsCurrentApplicationVersionId =
          _Nat
            # pCurrentApplicationVersionId_,
        _dardsReferenceId = pReferenceId_
      }

-- | Name of an existing application.
dardsApplicationName :: Lens' DeleteApplicationReferenceDataSource Text
dardsApplicationName = lens _dardsApplicationName (\s a -> s {_dardsApplicationName = a})

-- | Version of the application. You can use the <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication> operation to get the current application version. If the version specified is not the current version, the @ConcurrentModificationException@ is returned.
dardsCurrentApplicationVersionId :: Lens' DeleteApplicationReferenceDataSource Natural
dardsCurrentApplicationVersionId = lens _dardsCurrentApplicationVersionId (\s a -> s {_dardsCurrentApplicationVersionId = a}) . _Nat

-- | ID of the reference data source. When you add a reference data source to your application using the <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html AddApplicationReferenceDataSource> , Amazon Kinesis Analytics assigns an ID. You can use the <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication> operation to get the reference ID.
dardsReferenceId :: Lens' DeleteApplicationReferenceDataSource Text
dardsReferenceId = lens _dardsReferenceId (\s a -> s {_dardsReferenceId = a})

instance
  AWSRequest
    DeleteApplicationReferenceDataSource
  where
  type
    Rs DeleteApplicationReferenceDataSource =
      DeleteApplicationReferenceDataSourceResponse
  request = postJSON kinesisAnalytics
  response =
    receiveEmpty
      ( \s h x ->
          DeleteApplicationReferenceDataSourceResponse'
            <$> (pure (fromEnum s))
      )

instance
  Hashable
    DeleteApplicationReferenceDataSource

instance NFData DeleteApplicationReferenceDataSource

instance
  ToHeaders
    DeleteApplicationReferenceDataSource
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "KinesisAnalytics_20150814.DeleteApplicationReferenceDataSource" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteApplicationReferenceDataSource where
  toJSON DeleteApplicationReferenceDataSource' {..} =
    object
      ( catMaybes
          [ Just ("ApplicationName" .= _dardsApplicationName),
            Just
              ( "CurrentApplicationVersionId"
                  .= _dardsCurrentApplicationVersionId
              ),
            Just ("ReferenceId" .= _dardsReferenceId)
          ]
      )

instance ToPath DeleteApplicationReferenceDataSource where
  toPath = const "/"

instance ToQuery DeleteApplicationReferenceDataSource where
  toQuery = const mempty

-- | /See:/ 'deleteApplicationReferenceDataSourceResponse' smart constructor.
newtype DeleteApplicationReferenceDataSourceResponse = DeleteApplicationReferenceDataSourceResponse'
  { _dardsrrsResponseStatus ::
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

-- | Creates a value of 'DeleteApplicationReferenceDataSourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dardsrrsResponseStatus' - -- | The response status code.
deleteApplicationReferenceDataSourceResponse ::
  -- | 'dardsrrsResponseStatus'
  Int ->
  DeleteApplicationReferenceDataSourceResponse
deleteApplicationReferenceDataSourceResponse
  pResponseStatus_ =
    DeleteApplicationReferenceDataSourceResponse'
      { _dardsrrsResponseStatus =
          pResponseStatus_
      }

-- | -- | The response status code.
dardsrrsResponseStatus :: Lens' DeleteApplicationReferenceDataSourceResponse Int
dardsrrsResponseStatus = lens _dardsrrsResponseStatus (\s a -> s {_dardsrrsResponseStatus = a})

instance
  NFData
    DeleteApplicationReferenceDataSourceResponse
