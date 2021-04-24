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
-- Module      : Network.AWS.Glue.GetJobRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the metadata for a given job run.
module Network.AWS.Glue.GetJobRun
  ( -- * Creating a Request
    getJobRun,
    GetJobRun,

    -- * Request Lenses
    gPredecessorsIncluded,
    gJobName,
    gRunId,

    -- * Destructuring the Response
    getJobRunResponse,
    GetJobRunResponse,

    -- * Response Lenses
    gjrrrsJobRun,
    gjrrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getJobRun' smart constructor.
data GetJobRun = GetJobRun'
  { _gPredecessorsIncluded ::
      !(Maybe Bool),
    _gJobName :: !Text,
    _gRunId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetJobRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gPredecessorsIncluded' - True if a list of predecessor runs should be returned.
--
-- * 'gJobName' - Name of the job definition being run.
--
-- * 'gRunId' - The ID of the job run.
getJobRun ::
  -- | 'gJobName'
  Text ->
  -- | 'gRunId'
  Text ->
  GetJobRun
getJobRun pJobName_ pRunId_ =
  GetJobRun'
    { _gPredecessorsIncluded = Nothing,
      _gJobName = pJobName_,
      _gRunId = pRunId_
    }

-- | True if a list of predecessor runs should be returned.
gPredecessorsIncluded :: Lens' GetJobRun (Maybe Bool)
gPredecessorsIncluded = lens _gPredecessorsIncluded (\s a -> s {_gPredecessorsIncluded = a})

-- | Name of the job definition being run.
gJobName :: Lens' GetJobRun Text
gJobName = lens _gJobName (\s a -> s {_gJobName = a})

-- | The ID of the job run.
gRunId :: Lens' GetJobRun Text
gRunId = lens _gRunId (\s a -> s {_gRunId = a})

instance AWSRequest GetJobRun where
  type Rs GetJobRun = GetJobRunResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetJobRunResponse'
            <$> (x .?> "JobRun") <*> (pure (fromEnum s))
      )

instance Hashable GetJobRun

instance NFData GetJobRun

instance ToHeaders GetJobRun where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetJobRun" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetJobRun where
  toJSON GetJobRun' {..} =
    object
      ( catMaybes
          [ ("PredecessorsIncluded" .=)
              <$> _gPredecessorsIncluded,
            Just ("JobName" .= _gJobName),
            Just ("RunId" .= _gRunId)
          ]
      )

instance ToPath GetJobRun where
  toPath = const "/"

instance ToQuery GetJobRun where
  toQuery = const mempty

-- | /See:/ 'getJobRunResponse' smart constructor.
data GetJobRunResponse = GetJobRunResponse'
  { _gjrrrsJobRun ::
      !(Maybe JobRun),
    _gjrrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetJobRunResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjrrrsJobRun' - The requested job-run metadata.
--
-- * 'gjrrrsResponseStatus' - -- | The response status code.
getJobRunResponse ::
  -- | 'gjrrrsResponseStatus'
  Int ->
  GetJobRunResponse
getJobRunResponse pResponseStatus_ =
  GetJobRunResponse'
    { _gjrrrsJobRun = Nothing,
      _gjrrrsResponseStatus = pResponseStatus_
    }

-- | The requested job-run metadata.
gjrrrsJobRun :: Lens' GetJobRunResponse (Maybe JobRun)
gjrrrsJobRun = lens _gjrrrsJobRun (\s a -> s {_gjrrrsJobRun = a})

-- | -- | The response status code.
gjrrrsResponseStatus :: Lens' GetJobRunResponse Int
gjrrrsResponseStatus = lens _gjrrrsResponseStatus (\s a -> s {_gjrrrsResponseStatus = a})

instance NFData GetJobRunResponse
