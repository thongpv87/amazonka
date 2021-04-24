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
-- Module      : Network.AWS.DeviceFarm.GetRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a run.
module Network.AWS.DeviceFarm.GetRun
  ( -- * Creating a Request
    getRun,
    GetRun,

    -- * Request Lenses
    grArn,

    -- * Destructuring the Response
    getRunResponse,
    GetRunResponse,

    -- * Response Lenses
    grrrsRun,
    grrrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents a request to the get run operation.
--
--
--
-- /See:/ 'getRun' smart constructor.
newtype GetRun = GetRun' {_grArn :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grArn' - The run's ARN.
getRun ::
  -- | 'grArn'
  Text ->
  GetRun
getRun pArn_ = GetRun' {_grArn = pArn_}

-- | The run's ARN.
grArn :: Lens' GetRun Text
grArn = lens _grArn (\s a -> s {_grArn = a})

instance AWSRequest GetRun where
  type Rs GetRun = GetRunResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          GetRunResponse'
            <$> (x .?> "run") <*> (pure (fromEnum s))
      )

instance Hashable GetRun

instance NFData GetRun

instance ToHeaders GetRun where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DeviceFarm_20150623.GetRun" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRun where
  toJSON GetRun' {..} =
    object (catMaybes [Just ("arn" .= _grArn)])

instance ToPath GetRun where
  toPath = const "/"

instance ToQuery GetRun where
  toQuery = const mempty

-- | Represents the result of a get run request.
--
--
--
-- /See:/ 'getRunResponse' smart constructor.
data GetRunResponse = GetRunResponse'
  { _grrrsRun ::
      !(Maybe Run),
    _grrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetRunResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grrrsRun' - The run to get results from.
--
-- * 'grrrsResponseStatus' - -- | The response status code.
getRunResponse ::
  -- | 'grrrsResponseStatus'
  Int ->
  GetRunResponse
getRunResponse pResponseStatus_ =
  GetRunResponse'
    { _grrrsRun = Nothing,
      _grrrsResponseStatus = pResponseStatus_
    }

-- | The run to get results from.
grrrsRun :: Lens' GetRunResponse (Maybe Run)
grrrsRun = lens _grrrsRun (\s a -> s {_grrrsRun = a})

-- | -- | The response status code.
grrrsResponseStatus :: Lens' GetRunResponse Int
grrrsResponseStatus = lens _grrrsResponseStatus (\s a -> s {_grrrsResponseStatus = a})

instance NFData GetRunResponse
