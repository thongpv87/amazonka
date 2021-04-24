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
-- Module      : Network.AWS.Glue.UpdateJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing job definition.
module Network.AWS.Glue.UpdateJob
  ( -- * Creating a Request
    updateJob,
    UpdateJob,

    -- * Request Lenses
    ujJobName,
    ujJobUpdate,

    -- * Destructuring the Response
    updateJobResponse,
    UpdateJobResponse,

    -- * Response Lenses
    ujrrsJobName,
    ujrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateJob' smart constructor.
data UpdateJob = UpdateJob'
  { _ujJobName :: !Text,
    _ujJobUpdate :: !JobUpdate
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ujJobName' - The name of the job definition to update.
--
-- * 'ujJobUpdate' - Specifies the values with which to update the job definition.
updateJob ::
  -- | 'ujJobName'
  Text ->
  -- | 'ujJobUpdate'
  JobUpdate ->
  UpdateJob
updateJob pJobName_ pJobUpdate_ =
  UpdateJob'
    { _ujJobName = pJobName_,
      _ujJobUpdate = pJobUpdate_
    }

-- | The name of the job definition to update.
ujJobName :: Lens' UpdateJob Text
ujJobName = lens _ujJobName (\s a -> s {_ujJobName = a})

-- | Specifies the values with which to update the job definition.
ujJobUpdate :: Lens' UpdateJob JobUpdate
ujJobUpdate = lens _ujJobUpdate (\s a -> s {_ujJobUpdate = a})

instance AWSRequest UpdateJob where
  type Rs UpdateJob = UpdateJobResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          UpdateJobResponse'
            <$> (x .?> "JobName") <*> (pure (fromEnum s))
      )

instance Hashable UpdateJob

instance NFData UpdateJob

instance ToHeaders UpdateJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.UpdateJob" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateJob where
  toJSON UpdateJob' {..} =
    object
      ( catMaybes
          [ Just ("JobName" .= _ujJobName),
            Just ("JobUpdate" .= _ujJobUpdate)
          ]
      )

instance ToPath UpdateJob where
  toPath = const "/"

instance ToQuery UpdateJob where
  toQuery = const mempty

-- | /See:/ 'updateJobResponse' smart constructor.
data UpdateJobResponse = UpdateJobResponse'
  { _ujrrsJobName ::
      !(Maybe Text),
    _ujrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ujrrsJobName' - Returns the name of the updated job definition.
--
-- * 'ujrrsResponseStatus' - -- | The response status code.
updateJobResponse ::
  -- | 'ujrrsResponseStatus'
  Int ->
  UpdateJobResponse
updateJobResponse pResponseStatus_ =
  UpdateJobResponse'
    { _ujrrsJobName = Nothing,
      _ujrrsResponseStatus = pResponseStatus_
    }

-- | Returns the name of the updated job definition.
ujrrsJobName :: Lens' UpdateJobResponse (Maybe Text)
ujrrsJobName = lens _ujrrsJobName (\s a -> s {_ujrrsJobName = a})

-- | -- | The response status code.
ujrrsResponseStatus :: Lens' UpdateJobResponse Int
ujrrsResponseStatus = lens _ujrrsResponseStatus (\s a -> s {_ujrrsResponseStatus = a})

instance NFData UpdateJobResponse
