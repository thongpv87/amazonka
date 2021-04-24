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
-- Module      : Network.AWS.CodePipeline.DeregisterWebhookWithThirdParty
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the connection between the webhook that was created by CodePipeline and the external tool with events to be detected. Currently supported only for webhooks that target an action type of GitHub.
module Network.AWS.CodePipeline.DeregisterWebhookWithThirdParty
  ( -- * Creating a Request
    deregisterWebhookWithThirdParty,
    DeregisterWebhookWithThirdParty,

    -- * Request Lenses
    dwwtpWebhookName,

    -- * Destructuring the Response
    deregisterWebhookWithThirdPartyResponse,
    DeregisterWebhookWithThirdPartyResponse,

    -- * Response Lenses
    dwwtprrsResponseStatus,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deregisterWebhookWithThirdParty' smart constructor.
newtype DeregisterWebhookWithThirdParty = DeregisterWebhookWithThirdParty'
  { _dwwtpWebhookName ::
      Maybe
        Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeregisterWebhookWithThirdParty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwwtpWebhookName' - The name of the webhook you want to deregister.
deregisterWebhookWithThirdParty ::
  DeregisterWebhookWithThirdParty
deregisterWebhookWithThirdParty =
  DeregisterWebhookWithThirdParty'
    { _dwwtpWebhookName =
        Nothing
    }

-- | The name of the webhook you want to deregister.
dwwtpWebhookName :: Lens' DeregisterWebhookWithThirdParty (Maybe Text)
dwwtpWebhookName = lens _dwwtpWebhookName (\s a -> s {_dwwtpWebhookName = a})

instance AWSRequest DeregisterWebhookWithThirdParty where
  type
    Rs DeregisterWebhookWithThirdParty =
      DeregisterWebhookWithThirdPartyResponse
  request = postJSON codePipeline
  response =
    receiveEmpty
      ( \s h x ->
          DeregisterWebhookWithThirdPartyResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeregisterWebhookWithThirdParty

instance NFData DeregisterWebhookWithThirdParty

instance ToHeaders DeregisterWebhookWithThirdParty where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodePipeline_20150709.DeregisterWebhookWithThirdParty" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeregisterWebhookWithThirdParty where
  toJSON DeregisterWebhookWithThirdParty' {..} =
    object
      ( catMaybes
          [("webhookName" .=) <$> _dwwtpWebhookName]
      )

instance ToPath DeregisterWebhookWithThirdParty where
  toPath = const "/"

instance ToQuery DeregisterWebhookWithThirdParty where
  toQuery = const mempty

-- | /See:/ 'deregisterWebhookWithThirdPartyResponse' smart constructor.
newtype DeregisterWebhookWithThirdPartyResponse = DeregisterWebhookWithThirdPartyResponse'
  { _dwwtprrsResponseStatus ::
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

-- | Creates a value of 'DeregisterWebhookWithThirdPartyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwwtprrsResponseStatus' - -- | The response status code.
deregisterWebhookWithThirdPartyResponse ::
  -- | 'dwwtprrsResponseStatus'
  Int ->
  DeregisterWebhookWithThirdPartyResponse
deregisterWebhookWithThirdPartyResponse
  pResponseStatus_ =
    DeregisterWebhookWithThirdPartyResponse'
      { _dwwtprrsResponseStatus =
          pResponseStatus_
      }

-- | -- | The response status code.
dwwtprrsResponseStatus :: Lens' DeregisterWebhookWithThirdPartyResponse Int
dwwtprrsResponseStatus = lens _dwwtprrsResponseStatus (\s a -> s {_dwwtprrsResponseStatus = a})

instance
  NFData
    DeregisterWebhookWithThirdPartyResponse
