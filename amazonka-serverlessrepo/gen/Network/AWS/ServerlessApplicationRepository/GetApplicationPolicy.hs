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
-- Module      : Network.AWS.ServerlessApplicationRepository.GetApplicationPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the policy for the application.
module Network.AWS.ServerlessApplicationRepository.GetApplicationPolicy
  ( -- * Creating a Request
    getApplicationPolicy,
    GetApplicationPolicy,

    -- * Request Lenses
    gapApplicationId,

    -- * Destructuring the Response
    getApplicationPolicyResponse,
    GetApplicationPolicyResponse,

    -- * Response Lenses
    gaprrsStatements,
    gaprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServerlessApplicationRepository.Types

-- | /See:/ 'getApplicationPolicy' smart constructor.
newtype GetApplicationPolicy = GetApplicationPolicy'
  { _gapApplicationId ::
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

-- | Creates a value of 'GetApplicationPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gapApplicationId' - The Amazon Resource Name (ARN) of the application.
getApplicationPolicy ::
  -- | 'gapApplicationId'
  Text ->
  GetApplicationPolicy
getApplicationPolicy pApplicationId_ =
  GetApplicationPolicy'
    { _gapApplicationId =
        pApplicationId_
    }

-- | The Amazon Resource Name (ARN) of the application.
gapApplicationId :: Lens' GetApplicationPolicy Text
gapApplicationId = lens _gapApplicationId (\s a -> s {_gapApplicationId = a})

instance AWSRequest GetApplicationPolicy where
  type
    Rs GetApplicationPolicy =
      GetApplicationPolicyResponse
  request = get serverlessApplicationRepository
  response =
    receiveJSON
      ( \s h x ->
          GetApplicationPolicyResponse'
            <$> (x .?> "statements" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetApplicationPolicy

instance NFData GetApplicationPolicy

instance ToHeaders GetApplicationPolicy where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetApplicationPolicy where
  toPath GetApplicationPolicy' {..} =
    mconcat
      ["/applications/", toBS _gapApplicationId, "/policy"]

instance ToQuery GetApplicationPolicy where
  toQuery = const mempty

-- | /See:/ 'getApplicationPolicyResponse' smart constructor.
data GetApplicationPolicyResponse = GetApplicationPolicyResponse'
  { _gaprrsStatements ::
      !( Maybe
           [ApplicationPolicyStatement]
       ),
    _gaprrsResponseStatus ::
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

-- | Creates a value of 'GetApplicationPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaprrsStatements' - An array of policy statements applied to the application.
--
-- * 'gaprrsResponseStatus' - -- | The response status code.
getApplicationPolicyResponse ::
  -- | 'gaprrsResponseStatus'
  Int ->
  GetApplicationPolicyResponse
getApplicationPolicyResponse pResponseStatus_ =
  GetApplicationPolicyResponse'
    { _gaprrsStatements =
        Nothing,
      _gaprrsResponseStatus = pResponseStatus_
    }

-- | An array of policy statements applied to the application.
gaprrsStatements :: Lens' GetApplicationPolicyResponse [ApplicationPolicyStatement]
gaprrsStatements = lens _gaprrsStatements (\s a -> s {_gaprrsStatements = a}) . _Default . _Coerce

-- | -- | The response status code.
gaprrsResponseStatus :: Lens' GetApplicationPolicyResponse Int
gaprrsResponseStatus = lens _gaprrsResponseStatus (\s a -> s {_gaprrsResponseStatus = a})

instance NFData GetApplicationPolicyResponse
