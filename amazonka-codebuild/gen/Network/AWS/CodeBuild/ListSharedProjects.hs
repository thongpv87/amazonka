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
-- Module      : Network.AWS.CodeBuild.ListSharedProjects
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of projects that are shared with other AWS accounts or
-- users.
--
-- This operation returns paginated results.
module Network.AWS.CodeBuild.ListSharedProjects
  ( -- * Creating a Request
    ListSharedProjects (..),
    newListSharedProjects,

    -- * Request Lenses
    listSharedProjects_sortOrder,
    listSharedProjects_nextToken,
    listSharedProjects_maxResults,
    listSharedProjects_sortBy,

    -- * Destructuring the Response
    ListSharedProjectsResponse (..),
    newListSharedProjectsResponse,

    -- * Response Lenses
    listSharedProjectsResponse_nextToken,
    listSharedProjectsResponse_projects,
    listSharedProjectsResponse_httpStatus,
  )
where

import Network.AWS.CodeBuild.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListSharedProjects' smart constructor.
data ListSharedProjects = ListSharedProjects'
  { -- | The order in which to list shared build projects. Valid values include:
    --
    -- -   @ASCENDING@: List in ascending order.
    --
    -- -   @DESCENDING@: List in descending order.
    sortOrder :: Prelude.Maybe SortOrderType,
    -- | During a previous call, the maximum number of items that can be returned
    -- is the value specified in @maxResults@. If there more items in the list,
    -- then a unique string called a /nextToken/ is returned. To get the next
    -- batch of items in the list, call this operation again, adding the next
    -- token to the call. To get all of the items in the list, keep calling
    -- this operation with each subsequent next token that is returned, until
    -- no more next tokens are returned.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of paginated shared build projects returned per
    -- response. Use @nextToken@ to iterate pages in the list of returned
    -- @Project@ objects. The default value is 100.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The criterion to be used to list build projects shared with the current
    -- AWS account or user. Valid values include:
    --
    -- -   @ARN@: List based on the ARN.
    --
    -- -   @MODIFIED_TIME@: List based on when information about the shared
    --     project was last changed.
    sortBy :: Prelude.Maybe SharedResourceSortByType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListSharedProjects' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sortOrder', 'listSharedProjects_sortOrder' - The order in which to list shared build projects. Valid values include:
--
-- -   @ASCENDING@: List in ascending order.
--
-- -   @DESCENDING@: List in descending order.
--
-- 'nextToken', 'listSharedProjects_nextToken' - During a previous call, the maximum number of items that can be returned
-- is the value specified in @maxResults@. If there more items in the list,
-- then a unique string called a /nextToken/ is returned. To get the next
-- batch of items in the list, call this operation again, adding the next
-- token to the call. To get all of the items in the list, keep calling
-- this operation with each subsequent next token that is returned, until
-- no more next tokens are returned.
--
-- 'maxResults', 'listSharedProjects_maxResults' - The maximum number of paginated shared build projects returned per
-- response. Use @nextToken@ to iterate pages in the list of returned
-- @Project@ objects. The default value is 100.
--
-- 'sortBy', 'listSharedProjects_sortBy' - The criterion to be used to list build projects shared with the current
-- AWS account or user. Valid values include:
--
-- -   @ARN@: List based on the ARN.
--
-- -   @MODIFIED_TIME@: List based on when information about the shared
--     project was last changed.
newListSharedProjects ::
  ListSharedProjects
newListSharedProjects =
  ListSharedProjects'
    { sortOrder = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      sortBy = Prelude.Nothing
    }

-- | The order in which to list shared build projects. Valid values include:
--
-- -   @ASCENDING@: List in ascending order.
--
-- -   @DESCENDING@: List in descending order.
listSharedProjects_sortOrder :: Lens.Lens' ListSharedProjects (Prelude.Maybe SortOrderType)
listSharedProjects_sortOrder = Lens.lens (\ListSharedProjects' {sortOrder} -> sortOrder) (\s@ListSharedProjects' {} a -> s {sortOrder = a} :: ListSharedProjects)

-- | During a previous call, the maximum number of items that can be returned
-- is the value specified in @maxResults@. If there more items in the list,
-- then a unique string called a /nextToken/ is returned. To get the next
-- batch of items in the list, call this operation again, adding the next
-- token to the call. To get all of the items in the list, keep calling
-- this operation with each subsequent next token that is returned, until
-- no more next tokens are returned.
listSharedProjects_nextToken :: Lens.Lens' ListSharedProjects (Prelude.Maybe Prelude.Text)
listSharedProjects_nextToken = Lens.lens (\ListSharedProjects' {nextToken} -> nextToken) (\s@ListSharedProjects' {} a -> s {nextToken = a} :: ListSharedProjects)

-- | The maximum number of paginated shared build projects returned per
-- response. Use @nextToken@ to iterate pages in the list of returned
-- @Project@ objects. The default value is 100.
listSharedProjects_maxResults :: Lens.Lens' ListSharedProjects (Prelude.Maybe Prelude.Natural)
listSharedProjects_maxResults = Lens.lens (\ListSharedProjects' {maxResults} -> maxResults) (\s@ListSharedProjects' {} a -> s {maxResults = a} :: ListSharedProjects)

-- | The criterion to be used to list build projects shared with the current
-- AWS account or user. Valid values include:
--
-- -   @ARN@: List based on the ARN.
--
-- -   @MODIFIED_TIME@: List based on when information about the shared
--     project was last changed.
listSharedProjects_sortBy :: Lens.Lens' ListSharedProjects (Prelude.Maybe SharedResourceSortByType)
listSharedProjects_sortBy = Lens.lens (\ListSharedProjects' {sortBy} -> sortBy) (\s@ListSharedProjects' {} a -> s {sortBy = a} :: ListSharedProjects)

instance Pager.AWSPager ListSharedProjects where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listSharedProjectsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listSharedProjectsResponse_projects
              Prelude.. Lens._Just
              Prelude.. Lens.to Prelude.toList
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listSharedProjects_nextToken
          Lens..~ rs
          Lens.^? listSharedProjectsResponse_nextToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest ListSharedProjects where
  type
    Rs ListSharedProjects =
      ListSharedProjectsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListSharedProjectsResponse'
            Prelude.<$> (x Prelude..?> "nextToken")
            Prelude.<*> (x Prelude..?> "projects")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListSharedProjects

instance Prelude.NFData ListSharedProjects

instance Prelude.ToHeaders ListSharedProjects where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "CodeBuild_20161006.ListSharedProjects" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON ListSharedProjects where
  toJSON ListSharedProjects' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("sortOrder" Prelude..=) Prelude.<$> sortOrder,
            ("nextToken" Prelude..=) Prelude.<$> nextToken,
            ("maxResults" Prelude..=) Prelude.<$> maxResults,
            ("sortBy" Prelude..=) Prelude.<$> sortBy
          ]
      )

instance Prelude.ToPath ListSharedProjects where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ListSharedProjects where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListSharedProjectsResponse' smart constructor.
data ListSharedProjectsResponse = ListSharedProjectsResponse'
  { -- | During a previous call, the maximum number of items that can be returned
    -- is the value specified in @maxResults@. If there more items in the list,
    -- then a unique string called a /nextToken/ is returned. To get the next
    -- batch of items in the list, call this operation again, adding the next
    -- token to the call. To get all of the items in the list, keep calling
    -- this operation with each subsequent next token that is returned, until
    -- no more next tokens are returned.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of ARNs for the build projects shared with the current AWS
    -- account or user.
    projects :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListSharedProjectsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listSharedProjectsResponse_nextToken' - During a previous call, the maximum number of items that can be returned
-- is the value specified in @maxResults@. If there more items in the list,
-- then a unique string called a /nextToken/ is returned. To get the next
-- batch of items in the list, call this operation again, adding the next
-- token to the call. To get all of the items in the list, keep calling
-- this operation with each subsequent next token that is returned, until
-- no more next tokens are returned.
--
-- 'projects', 'listSharedProjectsResponse_projects' - The list of ARNs for the build projects shared with the current AWS
-- account or user.
--
-- 'httpStatus', 'listSharedProjectsResponse_httpStatus' - The response's http status code.
newListSharedProjectsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListSharedProjectsResponse
newListSharedProjectsResponse pHttpStatus_ =
  ListSharedProjectsResponse'
    { nextToken =
        Prelude.Nothing,
      projects = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | During a previous call, the maximum number of items that can be returned
-- is the value specified in @maxResults@. If there more items in the list,
-- then a unique string called a /nextToken/ is returned. To get the next
-- batch of items in the list, call this operation again, adding the next
-- token to the call. To get all of the items in the list, keep calling
-- this operation with each subsequent next token that is returned, until
-- no more next tokens are returned.
listSharedProjectsResponse_nextToken :: Lens.Lens' ListSharedProjectsResponse (Prelude.Maybe Prelude.Text)
listSharedProjectsResponse_nextToken = Lens.lens (\ListSharedProjectsResponse' {nextToken} -> nextToken) (\s@ListSharedProjectsResponse' {} a -> s {nextToken = a} :: ListSharedProjectsResponse)

-- | The list of ARNs for the build projects shared with the current AWS
-- account or user.
listSharedProjectsResponse_projects :: Lens.Lens' ListSharedProjectsResponse (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
listSharedProjectsResponse_projects = Lens.lens (\ListSharedProjectsResponse' {projects} -> projects) (\s@ListSharedProjectsResponse' {} a -> s {projects = a} :: ListSharedProjectsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
listSharedProjectsResponse_httpStatus :: Lens.Lens' ListSharedProjectsResponse Prelude.Int
listSharedProjectsResponse_httpStatus = Lens.lens (\ListSharedProjectsResponse' {httpStatus} -> httpStatus) (\s@ListSharedProjectsResponse' {} a -> s {httpStatus = a} :: ListSharedProjectsResponse)

instance Prelude.NFData ListSharedProjectsResponse
