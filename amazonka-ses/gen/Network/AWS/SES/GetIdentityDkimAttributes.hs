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
-- Module      : Network.AWS.SES.GetIdentityDkimAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the current status of Easy DKIM signing for an entity. For
-- domain name identities, this operation also returns the DKIM tokens that
-- are required for Easy DKIM signing, and whether Amazon SES has
-- successfully verified that these tokens have been published.
--
-- This operation takes a list of identities as input and returns the
-- following information for each:
--
-- -   Whether Easy DKIM signing is enabled or disabled.
--
-- -   A set of DKIM tokens that represent the identity. If the identity is
--     an email address, the tokens represent the domain of that address.
--
-- -   Whether Amazon SES has successfully verified the DKIM tokens
--     published in the domain\'s DNS. This information is only returned
--     for domain name identities, not for email addresses.
--
-- This operation is throttled at one request per second and can only get
-- DKIM attributes for up to 100 identities at a time.
--
-- For more information about creating DNS records using DKIM tokens, go to
-- the
-- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html Amazon SES Developer Guide>.
module Network.AWS.SES.GetIdentityDkimAttributes
  ( -- * Creating a Request
    GetIdentityDkimAttributes (..),
    newGetIdentityDkimAttributes,

    -- * Request Lenses
    getIdentityDkimAttributes_identities,

    -- * Destructuring the Response
    GetIdentityDkimAttributesResponse (..),
    newGetIdentityDkimAttributesResponse,

    -- * Response Lenses
    getIdentityDkimAttributesResponse_httpStatus,
    getIdentityDkimAttributesResponse_dkimAttributes,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SES.Types

-- | Represents a request for the status of Amazon SES Easy DKIM signing for
-- an identity. For domain identities, this request also returns the DKIM
-- tokens that are required for Easy DKIM signing, and whether Amazon SES
-- successfully verified that these tokens were published. For more
-- information about Easy DKIM, see the
-- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html Amazon SES Developer Guide>.
--
-- /See:/ 'newGetIdentityDkimAttributes' smart constructor.
data GetIdentityDkimAttributes = GetIdentityDkimAttributes'
  { -- | A list of one or more verified identities - email addresses, domains, or
    -- both.
    identities :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetIdentityDkimAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'identities', 'getIdentityDkimAttributes_identities' - A list of one or more verified identities - email addresses, domains, or
-- both.
newGetIdentityDkimAttributes ::
  GetIdentityDkimAttributes
newGetIdentityDkimAttributes =
  GetIdentityDkimAttributes'
    { identities =
        Prelude.mempty
    }

-- | A list of one or more verified identities - email addresses, domains, or
-- both.
getIdentityDkimAttributes_identities :: Lens.Lens' GetIdentityDkimAttributes [Prelude.Text]
getIdentityDkimAttributes_identities = Lens.lens (\GetIdentityDkimAttributes' {identities} -> identities) (\s@GetIdentityDkimAttributes' {} a -> s {identities = a} :: GetIdentityDkimAttributes) Prelude.. Prelude._Coerce

instance Prelude.AWSRequest GetIdentityDkimAttributes where
  type
    Rs GetIdentityDkimAttributes =
      GetIdentityDkimAttributesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "GetIdentityDkimAttributesResult"
      ( \s h x ->
          GetIdentityDkimAttributesResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Prelude..@? "DkimAttributes"
                            Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.parseXMLMap "entry" "key" "value"
                        )
      )

instance Prelude.Hashable GetIdentityDkimAttributes

instance Prelude.NFData GetIdentityDkimAttributes

instance Prelude.ToHeaders GetIdentityDkimAttributes where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath GetIdentityDkimAttributes where
  toPath = Prelude.const "/"

instance Prelude.ToQuery GetIdentityDkimAttributes where
  toQuery GetIdentityDkimAttributes' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("GetIdentityDkimAttributes" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2010-12-01" :: Prelude.ByteString),
        "Identities"
          Prelude.=: Prelude.toQueryList "member" identities
      ]

-- | Represents the status of Amazon SES Easy DKIM signing for an identity.
-- For domain identities, this response also contains the DKIM tokens that
-- are required for Easy DKIM signing, and whether Amazon SES successfully
-- verified that these tokens were published.
--
-- /See:/ 'newGetIdentityDkimAttributesResponse' smart constructor.
data GetIdentityDkimAttributesResponse = GetIdentityDkimAttributesResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The DKIM attributes for an email address or a domain.
    dkimAttributes :: Prelude.HashMap Prelude.Text IdentityDkimAttributes
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetIdentityDkimAttributesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getIdentityDkimAttributesResponse_httpStatus' - The response's http status code.
--
-- 'dkimAttributes', 'getIdentityDkimAttributesResponse_dkimAttributes' - The DKIM attributes for an email address or a domain.
newGetIdentityDkimAttributesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetIdentityDkimAttributesResponse
newGetIdentityDkimAttributesResponse pHttpStatus_ =
  GetIdentityDkimAttributesResponse'
    { httpStatus =
        pHttpStatus_,
      dkimAttributes = Prelude.mempty
    }

-- | The response's http status code.
getIdentityDkimAttributesResponse_httpStatus :: Lens.Lens' GetIdentityDkimAttributesResponse Prelude.Int
getIdentityDkimAttributesResponse_httpStatus = Lens.lens (\GetIdentityDkimAttributesResponse' {httpStatus} -> httpStatus) (\s@GetIdentityDkimAttributesResponse' {} a -> s {httpStatus = a} :: GetIdentityDkimAttributesResponse)

-- | The DKIM attributes for an email address or a domain.
getIdentityDkimAttributesResponse_dkimAttributes :: Lens.Lens' GetIdentityDkimAttributesResponse (Prelude.HashMap Prelude.Text IdentityDkimAttributes)
getIdentityDkimAttributesResponse_dkimAttributes = Lens.lens (\GetIdentityDkimAttributesResponse' {dkimAttributes} -> dkimAttributes) (\s@GetIdentityDkimAttributesResponse' {} a -> s {dkimAttributes = a} :: GetIdentityDkimAttributesResponse) Prelude.. Prelude._Coerce

instance
  Prelude.NFData
    GetIdentityDkimAttributesResponse
