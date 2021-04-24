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
-- Module      : Network.AWS.ServerlessApplicationRepository.PutApplicationPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the permission policy for an application. For the list of actions supported for this operation, see
--
--  <https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions Application
--  Permissions>
--  .
module Network.AWS.ServerlessApplicationRepository.PutApplicationPolicy
  ( -- * Creating a Request
    putApplicationPolicy,
    PutApplicationPolicy,

    -- * Request Lenses
    papApplicationId,
    papStatements,

    -- * Destructuring the Response
    putApplicationPolicyResponse,
    PutApplicationPolicyResponse,

    -- * Response Lenses
    paprrsStatements,
    paprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServerlessApplicationRepository.Types

-- | /See:/ 'putApplicationPolicy' smart constructor.
data PutApplicationPolicy = PutApplicationPolicy'
  { _papApplicationId ::
      !Text,
    _papStatements ::
      ![ApplicationPolicyStatement]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutApplicationPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'papApplicationId' - The Amazon Resource Name (ARN) of the application.
--
-- * 'papStatements' - An array of policy statements applied to the application.
putApplicationPolicy ::
  -- | 'papApplicationId'
  Text ->
  PutApplicationPolicy
putApplicationPolicy pApplicationId_ =
  PutApplicationPolicy'
    { _papApplicationId =
        pApplicationId_,
      _papStatements = mempty
    }

-- | The Amazon Resource Name (ARN) of the application.
papApplicationId :: Lens' PutApplicationPolicy Text
papApplicationId = lens _papApplicationId (\s a -> s {_papApplicationId = a})

-- | An array of policy statements applied to the application.
papStatements :: Lens' PutApplicationPolicy [ApplicationPolicyStatement]
papStatements = lens _papStatements (\s a -> s {_papStatements = a}) . _Coerce

instance AWSRequest PutApplicationPolicy where
  type
    Rs PutApplicationPolicy =
      PutApplicationPolicyResponse
  request = putJSON serverlessApplicationRepository
  response =
    receiveJSON
      ( \s h x ->
          PutApplicationPolicyResponse'
            <$> (x .?> "statements" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable PutApplicationPolicy

instance NFData PutApplicationPolicy

instance ToHeaders PutApplicationPolicy where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutApplicationPolicy where
  toJSON PutApplicationPolicy' {..} =
    object
      (catMaybes [Just ("statements" .= _papStatements)])

instance ToPath PutApplicationPolicy where
  toPath PutApplicationPolicy' {..} =
    mconcat
      ["/applications/", toBS _papApplicationId, "/policy"]

instance ToQuery PutApplicationPolicy where
  toQuery = const mempty

-- | /See:/ 'putApplicationPolicyResponse' smart constructor.
data PutApplicationPolicyResponse = PutApplicationPolicyResponse'
  { _paprrsStatements ::
      !( Maybe
           [ApplicationPolicyStatement]
       ),
    _paprrsResponseStatus ::
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

-- | Creates a value of 'PutApplicationPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paprrsStatements' - An array of policy statements applied to the application.
--
-- * 'paprrsResponseStatus' - -- | The response status code.
putApplicationPolicyResponse ::
  -- | 'paprrsResponseStatus'
  Int ->
  PutApplicationPolicyResponse
putApplicationPolicyResponse pResponseStatus_ =
  PutApplicationPolicyResponse'
    { _paprrsStatements =
        Nothing,
      _paprrsResponseStatus = pResponseStatus_
    }

-- | An array of policy statements applied to the application.
paprrsStatements :: Lens' PutApplicationPolicyResponse [ApplicationPolicyStatement]
paprrsStatements = lens _paprrsStatements (\s a -> s {_paprrsStatements = a}) . _Default . _Coerce

-- | -- | The response status code.
paprrsResponseStatus :: Lens' PutApplicationPolicyResponse Int
paprrsResponseStatus = lens _paprrsResponseStatus (\s a -> s {_paprrsResponseStatus = a})

instance NFData PutApplicationPolicyResponse
