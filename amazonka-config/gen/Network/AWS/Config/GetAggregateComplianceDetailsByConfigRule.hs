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
-- Module      : Network.AWS.Config.GetAggregateComplianceDetailsByConfigRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the evaluation results for the specified AWS Config rule for a
-- specific resource in a rule. The results indicate which AWS resources
-- were evaluated by the rule, when each resource was last evaluated, and
-- whether each resource complies with the rule.
--
-- The results can return an empty result page. But if you have a
-- @nextToken@, the results are displayed on the next page.
--
-- This operation returns paginated results.
module Network.AWS.Config.GetAggregateComplianceDetailsByConfigRule
  ( -- * Creating a Request
    GetAggregateComplianceDetailsByConfigRule (..),
    newGetAggregateComplianceDetailsByConfigRule,

    -- * Request Lenses
    getAggregateComplianceDetailsByConfigRule_nextToken,
    getAggregateComplianceDetailsByConfigRule_complianceType,
    getAggregateComplianceDetailsByConfigRule_limit,
    getAggregateComplianceDetailsByConfigRule_configurationAggregatorName,
    getAggregateComplianceDetailsByConfigRule_configRuleName,
    getAggregateComplianceDetailsByConfigRule_accountId,
    getAggregateComplianceDetailsByConfigRule_awsRegion,

    -- * Destructuring the Response
    GetAggregateComplianceDetailsByConfigRuleResponse (..),
    newGetAggregateComplianceDetailsByConfigRuleResponse,

    -- * Response Lenses
    getAggregateComplianceDetailsByConfigRuleResponse_nextToken,
    getAggregateComplianceDetailsByConfigRuleResponse_aggregateEvaluationResults,
    getAggregateComplianceDetailsByConfigRuleResponse_httpStatus,
  )
where

import Network.AWS.Config.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetAggregateComplianceDetailsByConfigRule' smart constructor.
data GetAggregateComplianceDetailsByConfigRule = GetAggregateComplianceDetailsByConfigRule'
  { -- | The @nextToken@ string returned on a previous page that you use to get
    -- the next page of results in a paginated response.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The resource compliance status.
    --
    -- For the @GetAggregateComplianceDetailsByConfigRuleRequest@ data type,
    -- AWS Config supports only the @COMPLIANT@ and @NON_COMPLIANT@. AWS Config
    -- does not support the @NOT_APPLICABLE@ and @INSUFFICIENT_DATA@ values.
    complianceType :: Prelude.Maybe ComplianceType,
    -- | The maximum number of evaluation results returned on each page. The
    -- default is 50. You cannot specify a number greater than 100. If you
    -- specify 0, AWS Config uses the default.
    limit :: Prelude.Maybe Prelude.Natural,
    -- | The name of the configuration aggregator.
    configurationAggregatorName :: Prelude.Text,
    -- | The name of the AWS Config rule for which you want compliance
    -- information.
    configRuleName :: Prelude.Text,
    -- | The 12-digit account ID of the source account.
    accountId :: Prelude.Text,
    -- | The source region from where the data is aggregated.
    awsRegion :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetAggregateComplianceDetailsByConfigRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getAggregateComplianceDetailsByConfigRule_nextToken' - The @nextToken@ string returned on a previous page that you use to get
-- the next page of results in a paginated response.
--
-- 'complianceType', 'getAggregateComplianceDetailsByConfigRule_complianceType' - The resource compliance status.
--
-- For the @GetAggregateComplianceDetailsByConfigRuleRequest@ data type,
-- AWS Config supports only the @COMPLIANT@ and @NON_COMPLIANT@. AWS Config
-- does not support the @NOT_APPLICABLE@ and @INSUFFICIENT_DATA@ values.
--
-- 'limit', 'getAggregateComplianceDetailsByConfigRule_limit' - The maximum number of evaluation results returned on each page. The
-- default is 50. You cannot specify a number greater than 100. If you
-- specify 0, AWS Config uses the default.
--
-- 'configurationAggregatorName', 'getAggregateComplianceDetailsByConfigRule_configurationAggregatorName' - The name of the configuration aggregator.
--
-- 'configRuleName', 'getAggregateComplianceDetailsByConfigRule_configRuleName' - The name of the AWS Config rule for which you want compliance
-- information.
--
-- 'accountId', 'getAggregateComplianceDetailsByConfigRule_accountId' - The 12-digit account ID of the source account.
--
-- 'awsRegion', 'getAggregateComplianceDetailsByConfigRule_awsRegion' - The source region from where the data is aggregated.
newGetAggregateComplianceDetailsByConfigRule ::
  -- | 'configurationAggregatorName'
  Prelude.Text ->
  -- | 'configRuleName'
  Prelude.Text ->
  -- | 'accountId'
  Prelude.Text ->
  -- | 'awsRegion'
  Prelude.Text ->
  GetAggregateComplianceDetailsByConfigRule
newGetAggregateComplianceDetailsByConfigRule
  pConfigurationAggregatorName_
  pConfigRuleName_
  pAccountId_
  pAwsRegion_ =
    GetAggregateComplianceDetailsByConfigRule'
      { nextToken =
          Prelude.Nothing,
        complianceType = Prelude.Nothing,
        limit = Prelude.Nothing,
        configurationAggregatorName =
          pConfigurationAggregatorName_,
        configRuleName =
          pConfigRuleName_,
        accountId = pAccountId_,
        awsRegion = pAwsRegion_
      }

-- | The @nextToken@ string returned on a previous page that you use to get
-- the next page of results in a paginated response.
getAggregateComplianceDetailsByConfigRule_nextToken :: Lens.Lens' GetAggregateComplianceDetailsByConfigRule (Prelude.Maybe Prelude.Text)
getAggregateComplianceDetailsByConfigRule_nextToken = Lens.lens (\GetAggregateComplianceDetailsByConfigRule' {nextToken} -> nextToken) (\s@GetAggregateComplianceDetailsByConfigRule' {} a -> s {nextToken = a} :: GetAggregateComplianceDetailsByConfigRule)

-- | The resource compliance status.
--
-- For the @GetAggregateComplianceDetailsByConfigRuleRequest@ data type,
-- AWS Config supports only the @COMPLIANT@ and @NON_COMPLIANT@. AWS Config
-- does not support the @NOT_APPLICABLE@ and @INSUFFICIENT_DATA@ values.
getAggregateComplianceDetailsByConfigRule_complianceType :: Lens.Lens' GetAggregateComplianceDetailsByConfigRule (Prelude.Maybe ComplianceType)
getAggregateComplianceDetailsByConfigRule_complianceType = Lens.lens (\GetAggregateComplianceDetailsByConfigRule' {complianceType} -> complianceType) (\s@GetAggregateComplianceDetailsByConfigRule' {} a -> s {complianceType = a} :: GetAggregateComplianceDetailsByConfigRule)

-- | The maximum number of evaluation results returned on each page. The
-- default is 50. You cannot specify a number greater than 100. If you
-- specify 0, AWS Config uses the default.
getAggregateComplianceDetailsByConfigRule_limit :: Lens.Lens' GetAggregateComplianceDetailsByConfigRule (Prelude.Maybe Prelude.Natural)
getAggregateComplianceDetailsByConfigRule_limit = Lens.lens (\GetAggregateComplianceDetailsByConfigRule' {limit} -> limit) (\s@GetAggregateComplianceDetailsByConfigRule' {} a -> s {limit = a} :: GetAggregateComplianceDetailsByConfigRule)

-- | The name of the configuration aggregator.
getAggregateComplianceDetailsByConfigRule_configurationAggregatorName :: Lens.Lens' GetAggregateComplianceDetailsByConfigRule Prelude.Text
getAggregateComplianceDetailsByConfigRule_configurationAggregatorName = Lens.lens (\GetAggregateComplianceDetailsByConfigRule' {configurationAggregatorName} -> configurationAggregatorName) (\s@GetAggregateComplianceDetailsByConfigRule' {} a -> s {configurationAggregatorName = a} :: GetAggregateComplianceDetailsByConfigRule)

-- | The name of the AWS Config rule for which you want compliance
-- information.
getAggregateComplianceDetailsByConfigRule_configRuleName :: Lens.Lens' GetAggregateComplianceDetailsByConfigRule Prelude.Text
getAggregateComplianceDetailsByConfigRule_configRuleName = Lens.lens (\GetAggregateComplianceDetailsByConfigRule' {configRuleName} -> configRuleName) (\s@GetAggregateComplianceDetailsByConfigRule' {} a -> s {configRuleName = a} :: GetAggregateComplianceDetailsByConfigRule)

-- | The 12-digit account ID of the source account.
getAggregateComplianceDetailsByConfigRule_accountId :: Lens.Lens' GetAggregateComplianceDetailsByConfigRule Prelude.Text
getAggregateComplianceDetailsByConfigRule_accountId = Lens.lens (\GetAggregateComplianceDetailsByConfigRule' {accountId} -> accountId) (\s@GetAggregateComplianceDetailsByConfigRule' {} a -> s {accountId = a} :: GetAggregateComplianceDetailsByConfigRule)

-- | The source region from where the data is aggregated.
getAggregateComplianceDetailsByConfigRule_awsRegion :: Lens.Lens' GetAggregateComplianceDetailsByConfigRule Prelude.Text
getAggregateComplianceDetailsByConfigRule_awsRegion = Lens.lens (\GetAggregateComplianceDetailsByConfigRule' {awsRegion} -> awsRegion) (\s@GetAggregateComplianceDetailsByConfigRule' {} a -> s {awsRegion = a} :: GetAggregateComplianceDetailsByConfigRule)

instance
  Pager.AWSPager
    GetAggregateComplianceDetailsByConfigRule
  where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? getAggregateComplianceDetailsByConfigRuleResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? getAggregateComplianceDetailsByConfigRuleResponse_aggregateEvaluationResults
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& getAggregateComplianceDetailsByConfigRule_nextToken
          Lens..~ rs
            Lens.^? getAggregateComplianceDetailsByConfigRuleResponse_nextToken
              Prelude.. Lens._Just

instance
  Prelude.AWSRequest
    GetAggregateComplianceDetailsByConfigRule
  where
  type
    Rs GetAggregateComplianceDetailsByConfigRule =
      GetAggregateComplianceDetailsByConfigRuleResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAggregateComplianceDetailsByConfigRuleResponse'
            Prelude.<$> (x Prelude..?> "NextToken")
              Prelude.<*> ( x Prelude..?> "AggregateEvaluationResults"
                              Prelude..!@ Prelude.mempty
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetAggregateComplianceDetailsByConfigRule

instance
  Prelude.NFData
    GetAggregateComplianceDetailsByConfigRule

instance
  Prelude.ToHeaders
    GetAggregateComplianceDetailsByConfigRule
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "StarlingDoveService.GetAggregateComplianceDetailsByConfigRule" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance
  Prelude.ToJSON
    GetAggregateComplianceDetailsByConfigRule
  where
  toJSON GetAggregateComplianceDetailsByConfigRule' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("NextToken" Prelude..=) Prelude.<$> nextToken,
            ("ComplianceType" Prelude..=)
              Prelude.<$> complianceType,
            ("Limit" Prelude..=) Prelude.<$> limit,
            Prelude.Just
              ( "ConfigurationAggregatorName"
                  Prelude..= configurationAggregatorName
              ),
            Prelude.Just
              ("ConfigRuleName" Prelude..= configRuleName),
            Prelude.Just ("AccountId" Prelude..= accountId),
            Prelude.Just ("AwsRegion" Prelude..= awsRegion)
          ]
      )

instance
  Prelude.ToPath
    GetAggregateComplianceDetailsByConfigRule
  where
  toPath = Prelude.const "/"

instance
  Prelude.ToQuery
    GetAggregateComplianceDetailsByConfigRule
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetAggregateComplianceDetailsByConfigRuleResponse' smart constructor.
data GetAggregateComplianceDetailsByConfigRuleResponse = GetAggregateComplianceDetailsByConfigRuleResponse'
  { -- | The @nextToken@ string returned on a previous page that you use to get
    -- the next page of results in a paginated response.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Returns an AggregateEvaluationResults object.
    aggregateEvaluationResults :: Prelude.Maybe [AggregateEvaluationResult],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetAggregateComplianceDetailsByConfigRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getAggregateComplianceDetailsByConfigRuleResponse_nextToken' - The @nextToken@ string returned on a previous page that you use to get
-- the next page of results in a paginated response.
--
-- 'aggregateEvaluationResults', 'getAggregateComplianceDetailsByConfigRuleResponse_aggregateEvaluationResults' - Returns an AggregateEvaluationResults object.
--
-- 'httpStatus', 'getAggregateComplianceDetailsByConfigRuleResponse_httpStatus' - The response's http status code.
newGetAggregateComplianceDetailsByConfigRuleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAggregateComplianceDetailsByConfigRuleResponse
newGetAggregateComplianceDetailsByConfigRuleResponse
  pHttpStatus_ =
    GetAggregateComplianceDetailsByConfigRuleResponse'
      { nextToken =
          Prelude.Nothing,
        aggregateEvaluationResults =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | The @nextToken@ string returned on a previous page that you use to get
-- the next page of results in a paginated response.
getAggregateComplianceDetailsByConfigRuleResponse_nextToken :: Lens.Lens' GetAggregateComplianceDetailsByConfigRuleResponse (Prelude.Maybe Prelude.Text)
getAggregateComplianceDetailsByConfigRuleResponse_nextToken = Lens.lens (\GetAggregateComplianceDetailsByConfigRuleResponse' {nextToken} -> nextToken) (\s@GetAggregateComplianceDetailsByConfigRuleResponse' {} a -> s {nextToken = a} :: GetAggregateComplianceDetailsByConfigRuleResponse)

-- | Returns an AggregateEvaluationResults object.
getAggregateComplianceDetailsByConfigRuleResponse_aggregateEvaluationResults :: Lens.Lens' GetAggregateComplianceDetailsByConfigRuleResponse (Prelude.Maybe [AggregateEvaluationResult])
getAggregateComplianceDetailsByConfigRuleResponse_aggregateEvaluationResults = Lens.lens (\GetAggregateComplianceDetailsByConfigRuleResponse' {aggregateEvaluationResults} -> aggregateEvaluationResults) (\s@GetAggregateComplianceDetailsByConfigRuleResponse' {} a -> s {aggregateEvaluationResults = a} :: GetAggregateComplianceDetailsByConfigRuleResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
getAggregateComplianceDetailsByConfigRuleResponse_httpStatus :: Lens.Lens' GetAggregateComplianceDetailsByConfigRuleResponse Prelude.Int
getAggregateComplianceDetailsByConfigRuleResponse_httpStatus = Lens.lens (\GetAggregateComplianceDetailsByConfigRuleResponse' {httpStatus} -> httpStatus) (\s@GetAggregateComplianceDetailsByConfigRuleResponse' {} a -> s {httpStatus = a} :: GetAggregateComplianceDetailsByConfigRuleResponse)

instance
  Prelude.NFData
    GetAggregateComplianceDetailsByConfigRuleResponse
