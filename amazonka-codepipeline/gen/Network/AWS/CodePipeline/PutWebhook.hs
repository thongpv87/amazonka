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
-- Module      : Network.AWS.CodePipeline.PutWebhook
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Defines a webhook and returns a unique webhook URL generated by CodePipeline. This URL can be supplied to third party source hosting providers to call every time there's a code change. When CodePipeline receives a POST request on this URL, the pipeline defined in the webhook is started as long as the POST request satisfied the authentication and filtering requirements supplied when defining the webhook. RegisterWebhookWithThirdParty and DeregisterWebhookWithThirdParty APIs can be used to automatically configure supported third parties to call the generated webhook URL.
module Network.AWS.CodePipeline.PutWebhook
  ( -- * Creating a Request
    putWebhook,
    PutWebhook,

    -- * Request Lenses
    pwTags,
    pwWebhook,

    -- * Destructuring the Response
    putWebhookResponse,
    PutWebhookResponse,

    -- * Response Lenses
    pwrrsWebhook,
    pwrrsResponseStatus,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putWebhook' smart constructor.
data PutWebhook = PutWebhook'
  { _pwTags ::
      !(Maybe [Tag]),
    _pwWebhook :: !WebhookDefinition
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutWebhook' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pwTags' - The tags for the webhook.
--
-- * 'pwWebhook' - The detail provided in an input file to create the webhook, such as the webhook name, the pipeline name, and the action name. Give the webhook a unique name that helps you identify it. You might name the webhook after the pipeline and action it targets so that you can easily recognize what it's used for later.
putWebhook ::
  -- | 'pwWebhook'
  WebhookDefinition ->
  PutWebhook
putWebhook pWebhook_ =
  PutWebhook'
    { _pwTags = Nothing,
      _pwWebhook = pWebhook_
    }

-- | The tags for the webhook.
pwTags :: Lens' PutWebhook [Tag]
pwTags = lens _pwTags (\s a -> s {_pwTags = a}) . _Default . _Coerce

-- | The detail provided in an input file to create the webhook, such as the webhook name, the pipeline name, and the action name. Give the webhook a unique name that helps you identify it. You might name the webhook after the pipeline and action it targets so that you can easily recognize what it's used for later.
pwWebhook :: Lens' PutWebhook WebhookDefinition
pwWebhook = lens _pwWebhook (\s a -> s {_pwWebhook = a})

instance AWSRequest PutWebhook where
  type Rs PutWebhook = PutWebhookResponse
  request = postJSON codePipeline
  response =
    receiveJSON
      ( \s h x ->
          PutWebhookResponse'
            <$> (x .?> "webhook") <*> (pure (fromEnum s))
      )

instance Hashable PutWebhook

instance NFData PutWebhook

instance ToHeaders PutWebhook where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodePipeline_20150709.PutWebhook" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutWebhook where
  toJSON PutWebhook' {..} =
    object
      ( catMaybes
          [ ("tags" .=) <$> _pwTags,
            Just ("webhook" .= _pwWebhook)
          ]
      )

instance ToPath PutWebhook where
  toPath = const "/"

instance ToQuery PutWebhook where
  toQuery = const mempty

-- | /See:/ 'putWebhookResponse' smart constructor.
data PutWebhookResponse = PutWebhookResponse'
  { _pwrrsWebhook ::
      !(Maybe ListWebhookItem),
    _pwrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutWebhookResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pwrrsWebhook' - The detail returned from creating the webhook, such as the webhook name, webhook URL, and webhook ARN.
--
-- * 'pwrrsResponseStatus' - -- | The response status code.
putWebhookResponse ::
  -- | 'pwrrsResponseStatus'
  Int ->
  PutWebhookResponse
putWebhookResponse pResponseStatus_ =
  PutWebhookResponse'
    { _pwrrsWebhook = Nothing,
      _pwrrsResponseStatus = pResponseStatus_
    }

-- | The detail returned from creating the webhook, such as the webhook name, webhook URL, and webhook ARN.
pwrrsWebhook :: Lens' PutWebhookResponse (Maybe ListWebhookItem)
pwrrsWebhook = lens _pwrrsWebhook (\s a -> s {_pwrrsWebhook = a})

-- | -- | The response status code.
pwrrsResponseStatus :: Lens' PutWebhookResponse Int
pwrrsResponseStatus = lens _pwrrsResponseStatus (\s a -> s {_pwrrsResponseStatus = a})

instance NFData PutWebhookResponse
