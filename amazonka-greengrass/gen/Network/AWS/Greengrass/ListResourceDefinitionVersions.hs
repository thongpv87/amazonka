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
-- Module      : Network.AWS.Greengrass.ListResourceDefinitionVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the versions of a resource definition.
--
-- This operation returns paginated results.
module Network.AWS.Greengrass.ListResourceDefinitionVersions
  ( -- * Creating a Request
    ListResourceDefinitionVersions (..),
    newListResourceDefinitionVersions,

    -- * Request Lenses
    listResourceDefinitionVersions_nextToken,
    listResourceDefinitionVersions_maxResults,
    listResourceDefinitionVersions_resourceDefinitionId,

    -- * Destructuring the Response
    ListResourceDefinitionVersionsResponse (..),
    newListResourceDefinitionVersionsResponse,

    -- * Response Lenses
    listResourceDefinitionVersionsResponse_nextToken,
    listResourceDefinitionVersionsResponse_versions,
    listResourceDefinitionVersionsResponse_httpStatus,
  )
where

import Network.AWS.Greengrass.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListResourceDefinitionVersions' smart constructor.
data ListResourceDefinitionVersions = ListResourceDefinitionVersions'
  { -- | The token for the next set of results, or \'\'null\'\' if there are no
    -- additional results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to be returned per request.
    maxResults :: Prelude.Maybe Prelude.Text,
    -- | The ID of the resource definition.
    resourceDefinitionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListResourceDefinitionVersions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listResourceDefinitionVersions_nextToken' - The token for the next set of results, or \'\'null\'\' if there are no
-- additional results.
--
-- 'maxResults', 'listResourceDefinitionVersions_maxResults' - The maximum number of results to be returned per request.
--
-- 'resourceDefinitionId', 'listResourceDefinitionVersions_resourceDefinitionId' - The ID of the resource definition.
newListResourceDefinitionVersions ::
  -- | 'resourceDefinitionId'
  Prelude.Text ->
  ListResourceDefinitionVersions
newListResourceDefinitionVersions
  pResourceDefinitionId_ =
    ListResourceDefinitionVersions'
      { nextToken =
          Prelude.Nothing,
        maxResults = Prelude.Nothing,
        resourceDefinitionId =
          pResourceDefinitionId_
      }

-- | The token for the next set of results, or \'\'null\'\' if there are no
-- additional results.
listResourceDefinitionVersions_nextToken :: Lens.Lens' ListResourceDefinitionVersions (Prelude.Maybe Prelude.Text)
listResourceDefinitionVersions_nextToken = Lens.lens (\ListResourceDefinitionVersions' {nextToken} -> nextToken) (\s@ListResourceDefinitionVersions' {} a -> s {nextToken = a} :: ListResourceDefinitionVersions)

-- | The maximum number of results to be returned per request.
listResourceDefinitionVersions_maxResults :: Lens.Lens' ListResourceDefinitionVersions (Prelude.Maybe Prelude.Text)
listResourceDefinitionVersions_maxResults = Lens.lens (\ListResourceDefinitionVersions' {maxResults} -> maxResults) (\s@ListResourceDefinitionVersions' {} a -> s {maxResults = a} :: ListResourceDefinitionVersions)

-- | The ID of the resource definition.
listResourceDefinitionVersions_resourceDefinitionId :: Lens.Lens' ListResourceDefinitionVersions Prelude.Text
listResourceDefinitionVersions_resourceDefinitionId = Lens.lens (\ListResourceDefinitionVersions' {resourceDefinitionId} -> resourceDefinitionId) (\s@ListResourceDefinitionVersions' {} a -> s {resourceDefinitionId = a} :: ListResourceDefinitionVersions)

instance
  Pager.AWSPager
    ListResourceDefinitionVersions
  where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listResourceDefinitionVersionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listResourceDefinitionVersionsResponse_versions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listResourceDefinitionVersions_nextToken
          Lens..~ rs
          Lens.^? listResourceDefinitionVersionsResponse_nextToken
            Prelude.. Lens._Just

instance
  Prelude.AWSRequest
    ListResourceDefinitionVersions
  where
  type
    Rs ListResourceDefinitionVersions =
      ListResourceDefinitionVersionsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListResourceDefinitionVersionsResponse'
            Prelude.<$> (x Prelude..?> "NextToken")
            Prelude.<*> (x Prelude..?> "Versions" Prelude..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListResourceDefinitionVersions

instance
  Prelude.NFData
    ListResourceDefinitionVersions

instance
  Prelude.ToHeaders
    ListResourceDefinitionVersions
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance
  Prelude.ToPath
    ListResourceDefinitionVersions
  where
  toPath ListResourceDefinitionVersions' {..} =
    Prelude.mconcat
      [ "/greengrass/definition/resources/",
        Prelude.toBS resourceDefinitionId,
        "/versions"
      ]

instance
  Prelude.ToQuery
    ListResourceDefinitionVersions
  where
  toQuery ListResourceDefinitionVersions' {..} =
    Prelude.mconcat
      [ "NextToken" Prelude.=: nextToken,
        "MaxResults" Prelude.=: maxResults
      ]

-- | /See:/ 'newListResourceDefinitionVersionsResponse' smart constructor.
data ListResourceDefinitionVersionsResponse = ListResourceDefinitionVersionsResponse'
  { -- | The token for the next set of results, or \'\'null\'\' if there are no
    -- additional results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about a version.
    versions :: Prelude.Maybe [VersionInformation],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListResourceDefinitionVersionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listResourceDefinitionVersionsResponse_nextToken' - The token for the next set of results, or \'\'null\'\' if there are no
-- additional results.
--
-- 'versions', 'listResourceDefinitionVersionsResponse_versions' - Information about a version.
--
-- 'httpStatus', 'listResourceDefinitionVersionsResponse_httpStatus' - The response's http status code.
newListResourceDefinitionVersionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListResourceDefinitionVersionsResponse
newListResourceDefinitionVersionsResponse
  pHttpStatus_ =
    ListResourceDefinitionVersionsResponse'
      { nextToken =
          Prelude.Nothing,
        versions = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The token for the next set of results, or \'\'null\'\' if there are no
-- additional results.
listResourceDefinitionVersionsResponse_nextToken :: Lens.Lens' ListResourceDefinitionVersionsResponse (Prelude.Maybe Prelude.Text)
listResourceDefinitionVersionsResponse_nextToken = Lens.lens (\ListResourceDefinitionVersionsResponse' {nextToken} -> nextToken) (\s@ListResourceDefinitionVersionsResponse' {} a -> s {nextToken = a} :: ListResourceDefinitionVersionsResponse)

-- | Information about a version.
listResourceDefinitionVersionsResponse_versions :: Lens.Lens' ListResourceDefinitionVersionsResponse (Prelude.Maybe [VersionInformation])
listResourceDefinitionVersionsResponse_versions = Lens.lens (\ListResourceDefinitionVersionsResponse' {versions} -> versions) (\s@ListResourceDefinitionVersionsResponse' {} a -> s {versions = a} :: ListResourceDefinitionVersionsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
listResourceDefinitionVersionsResponse_httpStatus :: Lens.Lens' ListResourceDefinitionVersionsResponse Prelude.Int
listResourceDefinitionVersionsResponse_httpStatus = Lens.lens (\ListResourceDefinitionVersionsResponse' {httpStatus} -> httpStatus) (\s@ListResourceDefinitionVersionsResponse' {} a -> s {httpStatus = a} :: ListResourceDefinitionVersionsResponse)

instance
  Prelude.NFData
    ListResourceDefinitionVersionsResponse
