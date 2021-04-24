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
-- Module      : Network.AWS.CodePipeline.StartPipelineExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the specified pipeline. Specifically, it begins processing the latest commit to the source location specified as part of the pipeline.
module Network.AWS.CodePipeline.StartPipelineExecution
  ( -- * Creating a Request
    startPipelineExecution,
    StartPipelineExecution,

    -- * Request Lenses
    speClientRequestToken,
    speName,

    -- * Destructuring the Response
    startPipelineExecutionResponse,
    StartPipelineExecutionResponse,

    -- * Response Lenses
    srsPipelineExecutionId,
    srsResponseStatus,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @StartPipelineExecution@ action.
--
--
--
-- /See:/ 'startPipelineExecution' smart constructor.
data StartPipelineExecution = StartPipelineExecution'
  { _speClientRequestToken ::
      !(Maybe Text),
    _speName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartPipelineExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'speClientRequestToken' - The system-generated unique ID used to identify a unique execution request.
--
-- * 'speName' - The name of the pipeline to start.
startPipelineExecution ::
  -- | 'speName'
  Text ->
  StartPipelineExecution
startPipelineExecution pName_ =
  StartPipelineExecution'
    { _speClientRequestToken =
        Nothing,
      _speName = pName_
    }

-- | The system-generated unique ID used to identify a unique execution request.
speClientRequestToken :: Lens' StartPipelineExecution (Maybe Text)
speClientRequestToken = lens _speClientRequestToken (\s a -> s {_speClientRequestToken = a})

-- | The name of the pipeline to start.
speName :: Lens' StartPipelineExecution Text
speName = lens _speName (\s a -> s {_speName = a})

instance AWSRequest StartPipelineExecution where
  type
    Rs StartPipelineExecution =
      StartPipelineExecutionResponse
  request = postJSON codePipeline
  response =
    receiveJSON
      ( \s h x ->
          StartPipelineExecutionResponse'
            <$> (x .?> "pipelineExecutionId")
            <*> (pure (fromEnum s))
      )

instance Hashable StartPipelineExecution

instance NFData StartPipelineExecution

instance ToHeaders StartPipelineExecution where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodePipeline_20150709.StartPipelineExecution" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartPipelineExecution where
  toJSON StartPipelineExecution' {..} =
    object
      ( catMaybes
          [ ("clientRequestToken" .=)
              <$> _speClientRequestToken,
            Just ("name" .= _speName)
          ]
      )

instance ToPath StartPipelineExecution where
  toPath = const "/"

instance ToQuery StartPipelineExecution where
  toQuery = const mempty

-- | Represents the output of a @StartPipelineExecution@ action.
--
--
--
-- /See:/ 'startPipelineExecutionResponse' smart constructor.
data StartPipelineExecutionResponse = StartPipelineExecutionResponse'
  { _srsPipelineExecutionId ::
      !( Maybe
           Text
       ),
    _srsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartPipelineExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsPipelineExecutionId' - The unique system-generated ID of the pipeline execution that was started.
--
-- * 'srsResponseStatus' - -- | The response status code.
startPipelineExecutionResponse ::
  -- | 'srsResponseStatus'
  Int ->
  StartPipelineExecutionResponse
startPipelineExecutionResponse pResponseStatus_ =
  StartPipelineExecutionResponse'
    { _srsPipelineExecutionId =
        Nothing,
      _srsResponseStatus = pResponseStatus_
    }

-- | The unique system-generated ID of the pipeline execution that was started.
srsPipelineExecutionId :: Lens' StartPipelineExecutionResponse (Maybe Text)
srsPipelineExecutionId = lens _srsPipelineExecutionId (\s a -> s {_srsPipelineExecutionId = a})

-- | -- | The response status code.
srsResponseStatus :: Lens' StartPipelineExecutionResponse Int
srsResponseStatus = lens _srsResponseStatus (\s a -> s {_srsResponseStatus = a})

instance NFData StartPipelineExecutionResponse
