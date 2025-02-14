{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.DescribeUserPoolClient
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Client method for returning the configuration information and metadata
-- of the specified user pool app client.
module Network.AWS.CognitoIdentityProvider.DescribeUserPoolClient
  ( -- * Creating a Request
    DescribeUserPoolClient (..),
    newDescribeUserPoolClient,

    -- * Request Lenses
    describeUserPoolClient_userPoolId,
    describeUserPoolClient_clientId,

    -- * Destructuring the Response
    DescribeUserPoolClientResponse (..),
    newDescribeUserPoolClientResponse,

    -- * Response Lenses
    describeUserPoolClientResponse_userPoolClient,
    describeUserPoolClientResponse_httpStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the request to describe a user pool client.
--
-- /See:/ 'newDescribeUserPoolClient' smart constructor.
data DescribeUserPoolClient = DescribeUserPoolClient'
  { -- | The user pool ID for the user pool you want to describe.
    userPoolId :: Prelude.Text,
    -- | The app client ID of the app associated with the user pool.
    clientId :: Prelude.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeUserPoolClient' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userPoolId', 'describeUserPoolClient_userPoolId' - The user pool ID for the user pool you want to describe.
--
-- 'clientId', 'describeUserPoolClient_clientId' - The app client ID of the app associated with the user pool.
newDescribeUserPoolClient ::
  -- | 'userPoolId'
  Prelude.Text ->
  -- | 'clientId'
  Prelude.Text ->
  DescribeUserPoolClient
newDescribeUserPoolClient pUserPoolId_ pClientId_ =
  DescribeUserPoolClient'
    { userPoolId = pUserPoolId_,
      clientId = Prelude._Sensitive Lens.# pClientId_
    }

-- | The user pool ID for the user pool you want to describe.
describeUserPoolClient_userPoolId :: Lens.Lens' DescribeUserPoolClient Prelude.Text
describeUserPoolClient_userPoolId = Lens.lens (\DescribeUserPoolClient' {userPoolId} -> userPoolId) (\s@DescribeUserPoolClient' {} a -> s {userPoolId = a} :: DescribeUserPoolClient)

-- | The app client ID of the app associated with the user pool.
describeUserPoolClient_clientId :: Lens.Lens' DescribeUserPoolClient Prelude.Text
describeUserPoolClient_clientId = Lens.lens (\DescribeUserPoolClient' {clientId} -> clientId) (\s@DescribeUserPoolClient' {} a -> s {clientId = a} :: DescribeUserPoolClient) Prelude.. Prelude._Sensitive

instance Prelude.AWSRequest DescribeUserPoolClient where
  type
    Rs DescribeUserPoolClient =
      DescribeUserPoolClientResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeUserPoolClientResponse'
            Prelude.<$> (x Prelude..?> "UserPoolClient")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeUserPoolClient

instance Prelude.NFData DescribeUserPoolClient

instance Prelude.ToHeaders DescribeUserPoolClient where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AWSCognitoIdentityProviderService.DescribeUserPoolClient" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DescribeUserPoolClient where
  toJSON DescribeUserPoolClient' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just ("UserPoolId" Prelude..= userPoolId),
            Prelude.Just ("ClientId" Prelude..= clientId)
          ]
      )

instance Prelude.ToPath DescribeUserPoolClient where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeUserPoolClient where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the response from the server from a request to describe the
-- user pool client.
--
-- /See:/ 'newDescribeUserPoolClientResponse' smart constructor.
data DescribeUserPoolClientResponse = DescribeUserPoolClientResponse'
  { -- | The user pool client from a server response to describe the user pool
    -- client.
    userPoolClient :: Prelude.Maybe UserPoolClientType,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeUserPoolClientResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userPoolClient', 'describeUserPoolClientResponse_userPoolClient' - The user pool client from a server response to describe the user pool
-- client.
--
-- 'httpStatus', 'describeUserPoolClientResponse_httpStatus' - The response's http status code.
newDescribeUserPoolClientResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeUserPoolClientResponse
newDescribeUserPoolClientResponse pHttpStatus_ =
  DescribeUserPoolClientResponse'
    { userPoolClient =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The user pool client from a server response to describe the user pool
-- client.
describeUserPoolClientResponse_userPoolClient :: Lens.Lens' DescribeUserPoolClientResponse (Prelude.Maybe UserPoolClientType)
describeUserPoolClientResponse_userPoolClient = Lens.lens (\DescribeUserPoolClientResponse' {userPoolClient} -> userPoolClient) (\s@DescribeUserPoolClientResponse' {} a -> s {userPoolClient = a} :: DescribeUserPoolClientResponse)

-- | The response's http status code.
describeUserPoolClientResponse_httpStatus :: Lens.Lens' DescribeUserPoolClientResponse Prelude.Int
describeUserPoolClientResponse_httpStatus = Lens.lens (\DescribeUserPoolClientResponse' {httpStatus} -> httpStatus) (\s@DescribeUserPoolClientResponse' {} a -> s {httpStatus = a} :: DescribeUserPoolClientResponse)

instance
  Prelude.NFData
    DescribeUserPoolClientResponse
