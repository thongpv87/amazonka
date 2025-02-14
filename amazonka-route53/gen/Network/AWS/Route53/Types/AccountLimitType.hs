{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types.AccountLimitType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.AccountLimitType
  ( AccountLimitType
      ( ..,
        AccountLimitType_MAX_HEALTH_CHECKS_BY_OWNER,
        AccountLimitType_MAX_HOSTED_ZONES_BY_OWNER,
        AccountLimitType_MAX_REUSABLE_DELEGATION_SETS_BY_OWNER,
        AccountLimitType_MAX_TRAFFIC_POLICIES_BY_OWNER,
        AccountLimitType_MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53.Internal

newtype AccountLimitType = AccountLimitType'
  { fromAccountLimitType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic,
      Prelude.Hashable,
      Prelude.NFData,
      Prelude.FromText,
      Prelude.ToText,
      Prelude.ToByteString,
      Prelude.ToLog,
      Prelude.ToHeader,
      Prelude.ToQuery,
      Prelude.FromJSON,
      Prelude.FromJSONKey,
      Prelude.ToJSON,
      Prelude.ToJSONKey,
      Prelude.FromXML,
      Prelude.ToXML
    )

pattern AccountLimitType_MAX_HEALTH_CHECKS_BY_OWNER :: AccountLimitType
pattern AccountLimitType_MAX_HEALTH_CHECKS_BY_OWNER = AccountLimitType' "MAX_HEALTH_CHECKS_BY_OWNER"

pattern AccountLimitType_MAX_HOSTED_ZONES_BY_OWNER :: AccountLimitType
pattern AccountLimitType_MAX_HOSTED_ZONES_BY_OWNER = AccountLimitType' "MAX_HOSTED_ZONES_BY_OWNER"

pattern AccountLimitType_MAX_REUSABLE_DELEGATION_SETS_BY_OWNER :: AccountLimitType
pattern AccountLimitType_MAX_REUSABLE_DELEGATION_SETS_BY_OWNER = AccountLimitType' "MAX_REUSABLE_DELEGATION_SETS_BY_OWNER"

pattern AccountLimitType_MAX_TRAFFIC_POLICIES_BY_OWNER :: AccountLimitType
pattern AccountLimitType_MAX_TRAFFIC_POLICIES_BY_OWNER = AccountLimitType' "MAX_TRAFFIC_POLICIES_BY_OWNER"

pattern AccountLimitType_MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER :: AccountLimitType
pattern AccountLimitType_MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER = AccountLimitType' "MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER"

{-# COMPLETE
  AccountLimitType_MAX_HEALTH_CHECKS_BY_OWNER,
  AccountLimitType_MAX_HOSTED_ZONES_BY_OWNER,
  AccountLimitType_MAX_REUSABLE_DELEGATION_SETS_BY_OWNER,
  AccountLimitType_MAX_TRAFFIC_POLICIES_BY_OWNER,
  AccountLimitType_MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER,
  AccountLimitType'
  #-}
