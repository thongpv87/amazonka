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
-- Module      : Network.AWS.Shield.DisableProactiveEngagement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes authorization from the DDoS Response Team (DRT) to notify contacts about escalations to the DRT and to initiate proactive customer support.
module Network.AWS.Shield.DisableProactiveEngagement
  ( -- * Creating a Request
    disableProactiveEngagement,
    DisableProactiveEngagement,

    -- * Destructuring the Response
    disableProactiveEngagementResponse,
    DisableProactiveEngagementResponse,

    -- * Response Lenses
    dperrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Shield.Types

-- | /See:/ 'disableProactiveEngagement' smart constructor.
data DisableProactiveEngagement = DisableProactiveEngagement'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisableProactiveEngagement' with the minimum fields required to make a request.
disableProactiveEngagement ::
  DisableProactiveEngagement
disableProactiveEngagement =
  DisableProactiveEngagement'

instance AWSRequest DisableProactiveEngagement where
  type
    Rs DisableProactiveEngagement =
      DisableProactiveEngagementResponse
  request = postJSON shield
  response =
    receiveEmpty
      ( \s h x ->
          DisableProactiveEngagementResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DisableProactiveEngagement

instance NFData DisableProactiveEngagement

instance ToHeaders DisableProactiveEngagement where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSShield_20160616.DisableProactiveEngagement" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DisableProactiveEngagement where
  toJSON = const (Object mempty)

instance ToPath DisableProactiveEngagement where
  toPath = const "/"

instance ToQuery DisableProactiveEngagement where
  toQuery = const mempty

-- | /See:/ 'disableProactiveEngagementResponse' smart constructor.
newtype DisableProactiveEngagementResponse = DisableProactiveEngagementResponse'
  { _dperrsResponseStatus ::
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

-- | Creates a value of 'DisableProactiveEngagementResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dperrsResponseStatus' - -- | The response status code.
disableProactiveEngagementResponse ::
  -- | 'dperrsResponseStatus'
  Int ->
  DisableProactiveEngagementResponse
disableProactiveEngagementResponse pResponseStatus_ =
  DisableProactiveEngagementResponse'
    { _dperrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dperrsResponseStatus :: Lens' DisableProactiveEngagementResponse Int
dperrsResponseStatus = lens _dperrsResponseStatus (\s a -> s {_dperrsResponseStatus = a})

instance NFData DisableProactiveEngagementResponse
