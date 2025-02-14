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
-- Module      : Network.AWS.ElasticSearch.GetUpgradeHistory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the complete history of the last 10 upgrades that were
-- performed on the domain.
--
-- This operation returns paginated results.
module Network.AWS.ElasticSearch.GetUpgradeHistory
  ( -- * Creating a Request
    GetUpgradeHistory (..),
    newGetUpgradeHistory,

    -- * Request Lenses
    getUpgradeHistory_nextToken,
    getUpgradeHistory_maxResults,
    getUpgradeHistory_domainName,

    -- * Destructuring the Response
    GetUpgradeHistoryResponse (..),
    newGetUpgradeHistoryResponse,

    -- * Response Lenses
    getUpgradeHistoryResponse_nextToken,
    getUpgradeHistoryResponse_upgradeHistories,
    getUpgradeHistoryResponse_httpStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for request parameters to @ GetUpgradeHistory @ operation.
--
-- /See:/ 'newGetUpgradeHistory' smart constructor.
data GetUpgradeHistory = GetUpgradeHistory'
  { nextToken :: Prelude.Maybe Prelude.Text,
    maxResults :: Prelude.Maybe Prelude.Int,
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetUpgradeHistory' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getUpgradeHistory_nextToken' - Undocumented member.
--
-- 'maxResults', 'getUpgradeHistory_maxResults' - Undocumented member.
--
-- 'domainName', 'getUpgradeHistory_domainName' - Undocumented member.
newGetUpgradeHistory ::
  -- | 'domainName'
  Prelude.Text ->
  GetUpgradeHistory
newGetUpgradeHistory pDomainName_ =
  GetUpgradeHistory'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      domainName = pDomainName_
    }

-- | Undocumented member.
getUpgradeHistory_nextToken :: Lens.Lens' GetUpgradeHistory (Prelude.Maybe Prelude.Text)
getUpgradeHistory_nextToken = Lens.lens (\GetUpgradeHistory' {nextToken} -> nextToken) (\s@GetUpgradeHistory' {} a -> s {nextToken = a} :: GetUpgradeHistory)

-- | Undocumented member.
getUpgradeHistory_maxResults :: Lens.Lens' GetUpgradeHistory (Prelude.Maybe Prelude.Int)
getUpgradeHistory_maxResults = Lens.lens (\GetUpgradeHistory' {maxResults} -> maxResults) (\s@GetUpgradeHistory' {} a -> s {maxResults = a} :: GetUpgradeHistory)

-- | Undocumented member.
getUpgradeHistory_domainName :: Lens.Lens' GetUpgradeHistory Prelude.Text
getUpgradeHistory_domainName = Lens.lens (\GetUpgradeHistory' {domainName} -> domainName) (\s@GetUpgradeHistory' {} a -> s {domainName = a} :: GetUpgradeHistory)

instance Pager.AWSPager GetUpgradeHistory where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? getUpgradeHistoryResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? getUpgradeHistoryResponse_upgradeHistories
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& getUpgradeHistory_nextToken
          Lens..~ rs
          Lens.^? getUpgradeHistoryResponse_nextToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest GetUpgradeHistory where
  type Rs GetUpgradeHistory = GetUpgradeHistoryResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetUpgradeHistoryResponse'
            Prelude.<$> (x Prelude..?> "NextToken")
            Prelude.<*> ( x Prelude..?> "UpgradeHistories"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetUpgradeHistory

instance Prelude.NFData GetUpgradeHistory

instance Prelude.ToHeaders GetUpgradeHistory where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath GetUpgradeHistory where
  toPath GetUpgradeHistory' {..} =
    Prelude.mconcat
      [ "/2015-01-01/es/upgradeDomain/",
        Prelude.toBS domainName,
        "/history"
      ]

instance Prelude.ToQuery GetUpgradeHistory where
  toQuery GetUpgradeHistory' {..} =
    Prelude.mconcat
      [ "nextToken" Prelude.=: nextToken,
        "maxResults" Prelude.=: maxResults
      ]

-- | Container for response returned by @ GetUpgradeHistory @ operation.
--
-- /See:/ 'newGetUpgradeHistoryResponse' smart constructor.
data GetUpgradeHistoryResponse = GetUpgradeHistoryResponse'
  { -- | Pagination token that needs to be supplied to the next call to get the
    -- next page of results
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of @ UpgradeHistory @ objects corresponding to each Upgrade or
    -- Upgrade Eligibility Check performed on a domain returned as part of
    -- @ GetUpgradeHistoryResponse @ object.
    upgradeHistories :: Prelude.Maybe [UpgradeHistory],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetUpgradeHistoryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getUpgradeHistoryResponse_nextToken' - Pagination token that needs to be supplied to the next call to get the
-- next page of results
--
-- 'upgradeHistories', 'getUpgradeHistoryResponse_upgradeHistories' - A list of @ UpgradeHistory @ objects corresponding to each Upgrade or
-- Upgrade Eligibility Check performed on a domain returned as part of
-- @ GetUpgradeHistoryResponse @ object.
--
-- 'httpStatus', 'getUpgradeHistoryResponse_httpStatus' - The response's http status code.
newGetUpgradeHistoryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetUpgradeHistoryResponse
newGetUpgradeHistoryResponse pHttpStatus_ =
  GetUpgradeHistoryResponse'
    { nextToken =
        Prelude.Nothing,
      upgradeHistories = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Pagination token that needs to be supplied to the next call to get the
-- next page of results
getUpgradeHistoryResponse_nextToken :: Lens.Lens' GetUpgradeHistoryResponse (Prelude.Maybe Prelude.Text)
getUpgradeHistoryResponse_nextToken = Lens.lens (\GetUpgradeHistoryResponse' {nextToken} -> nextToken) (\s@GetUpgradeHistoryResponse' {} a -> s {nextToken = a} :: GetUpgradeHistoryResponse)

-- | A list of @ UpgradeHistory @ objects corresponding to each Upgrade or
-- Upgrade Eligibility Check performed on a domain returned as part of
-- @ GetUpgradeHistoryResponse @ object.
getUpgradeHistoryResponse_upgradeHistories :: Lens.Lens' GetUpgradeHistoryResponse (Prelude.Maybe [UpgradeHistory])
getUpgradeHistoryResponse_upgradeHistories = Lens.lens (\GetUpgradeHistoryResponse' {upgradeHistories} -> upgradeHistories) (\s@GetUpgradeHistoryResponse' {} a -> s {upgradeHistories = a} :: GetUpgradeHistoryResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
getUpgradeHistoryResponse_httpStatus :: Lens.Lens' GetUpgradeHistoryResponse Prelude.Int
getUpgradeHistoryResponse_httpStatus = Lens.lens (\GetUpgradeHistoryResponse' {httpStatus} -> httpStatus) (\s@GetUpgradeHistoryResponse' {} a -> s {httpStatus = a} :: GetUpgradeHistoryResponse)

instance Prelude.NFData GetUpgradeHistoryResponse
