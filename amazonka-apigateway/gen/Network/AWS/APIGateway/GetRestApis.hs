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
-- Module      : Network.AWS.APIGateway.GetRestApis
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the RestApis resources for your collection.
--
-- This operation returns paginated results.
module Network.AWS.APIGateway.GetRestApis
  ( -- * Creating a Request
    GetRestApis (..),
    newGetRestApis,

    -- * Request Lenses
    getRestApis_position,
    getRestApis_limit,

    -- * Destructuring the Response
    GetRestApisResponse (..),
    newGetRestApisResponse,

    -- * Response Lenses
    getRestApisResponse_items,
    getRestApisResponse_position,
    getRestApisResponse_httpStatus,
  )
where

import Network.AWS.APIGateway.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The GET request to list existing RestApis defined for your collection.
--
-- /See:/ 'newGetRestApis' smart constructor.
data GetRestApis = GetRestApis'
  { -- | The current pagination position in the paged result set.
    position :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of returned results per page. The default value is 25
    -- and the maximum value is 500.
    limit :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetRestApis' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'position', 'getRestApis_position' - The current pagination position in the paged result set.
--
-- 'limit', 'getRestApis_limit' - The maximum number of returned results per page. The default value is 25
-- and the maximum value is 500.
newGetRestApis ::
  GetRestApis
newGetRestApis =
  GetRestApis'
    { position = Prelude.Nothing,
      limit = Prelude.Nothing
    }

-- | The current pagination position in the paged result set.
getRestApis_position :: Lens.Lens' GetRestApis (Prelude.Maybe Prelude.Text)
getRestApis_position = Lens.lens (\GetRestApis' {position} -> position) (\s@GetRestApis' {} a -> s {position = a} :: GetRestApis)

-- | The maximum number of returned results per page. The default value is 25
-- and the maximum value is 500.
getRestApis_limit :: Lens.Lens' GetRestApis (Prelude.Maybe Prelude.Int)
getRestApis_limit = Lens.lens (\GetRestApis' {limit} -> limit) (\s@GetRestApis' {} a -> s {limit = a} :: GetRestApis)

instance Pager.AWSPager GetRestApis where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? getRestApisResponse_position Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? getRestApisResponse_items Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& getRestApis_position
          Lens..~ rs
          Lens.^? getRestApisResponse_position Prelude.. Lens._Just

instance Prelude.AWSRequest GetRestApis where
  type Rs GetRestApis = GetRestApisResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetRestApisResponse'
            Prelude.<$> (x Prelude..?> "item" Prelude..!@ Prelude.mempty)
            Prelude.<*> (x Prelude..?> "position")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetRestApis

instance Prelude.NFData GetRestApis

instance Prelude.ToHeaders GetRestApis where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Accept"
              Prelude.=# ("application/json" :: Prelude.ByteString)
          ]
      )

instance Prelude.ToPath GetRestApis where
  toPath = Prelude.const "/restapis"

instance Prelude.ToQuery GetRestApis where
  toQuery GetRestApis' {..} =
    Prelude.mconcat
      [ "position" Prelude.=: position,
        "limit" Prelude.=: limit
      ]

-- | Contains references to your APIs and links that guide you in how to
-- interact with your collection. A collection offers a paginated view of
-- your APIs.
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html Create an API>
--
-- /See:/ 'newGetRestApisResponse' smart constructor.
data GetRestApisResponse = GetRestApisResponse'
  { -- | The current page of elements from this collection.
    items :: Prelude.Maybe [RestApi],
    position :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetRestApisResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'items', 'getRestApisResponse_items' - The current page of elements from this collection.
--
-- 'position', 'getRestApisResponse_position' - Undocumented member.
--
-- 'httpStatus', 'getRestApisResponse_httpStatus' - The response's http status code.
newGetRestApisResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetRestApisResponse
newGetRestApisResponse pHttpStatus_ =
  GetRestApisResponse'
    { items = Prelude.Nothing,
      position = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The current page of elements from this collection.
getRestApisResponse_items :: Lens.Lens' GetRestApisResponse (Prelude.Maybe [RestApi])
getRestApisResponse_items = Lens.lens (\GetRestApisResponse' {items} -> items) (\s@GetRestApisResponse' {} a -> s {items = a} :: GetRestApisResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | Undocumented member.
getRestApisResponse_position :: Lens.Lens' GetRestApisResponse (Prelude.Maybe Prelude.Text)
getRestApisResponse_position = Lens.lens (\GetRestApisResponse' {position} -> position) (\s@GetRestApisResponse' {} a -> s {position = a} :: GetRestApisResponse)

-- | The response's http status code.
getRestApisResponse_httpStatus :: Lens.Lens' GetRestApisResponse Prelude.Int
getRestApisResponse_httpStatus = Lens.lens (\GetRestApisResponse' {httpStatus} -> httpStatus) (\s@GetRestApisResponse' {} a -> s {httpStatus = a} :: GetRestApisResponse)

instance Prelude.NFData GetRestApisResponse
