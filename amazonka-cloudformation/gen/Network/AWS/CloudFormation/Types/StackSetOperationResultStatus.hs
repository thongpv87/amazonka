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
-- Module      : Network.AWS.CloudFormation.Types.StackSetOperationResultStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackSetOperationResultStatus
  ( StackSetOperationResultStatus
      ( ..,
        StackSetOperationResultStatus_CANCELLED,
        StackSetOperationResultStatus_FAILED,
        StackSetOperationResultStatus_PENDING,
        StackSetOperationResultStatus_RUNNING,
        StackSetOperationResultStatus_SUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StackSetOperationResultStatus = StackSetOperationResultStatus'
  { fromStackSetOperationResultStatus ::
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

pattern StackSetOperationResultStatus_CANCELLED :: StackSetOperationResultStatus
pattern StackSetOperationResultStatus_CANCELLED = StackSetOperationResultStatus' "CANCELLED"

pattern StackSetOperationResultStatus_FAILED :: StackSetOperationResultStatus
pattern StackSetOperationResultStatus_FAILED = StackSetOperationResultStatus' "FAILED"

pattern StackSetOperationResultStatus_PENDING :: StackSetOperationResultStatus
pattern StackSetOperationResultStatus_PENDING = StackSetOperationResultStatus' "PENDING"

pattern StackSetOperationResultStatus_RUNNING :: StackSetOperationResultStatus
pattern StackSetOperationResultStatus_RUNNING = StackSetOperationResultStatus' "RUNNING"

pattern StackSetOperationResultStatus_SUCCEEDED :: StackSetOperationResultStatus
pattern StackSetOperationResultStatus_SUCCEEDED = StackSetOperationResultStatus' "SUCCEEDED"

{-# COMPLETE
  StackSetOperationResultStatus_CANCELLED,
  StackSetOperationResultStatus_FAILED,
  StackSetOperationResultStatus_PENDING,
  StackSetOperationResultStatus_RUNNING,
  StackSetOperationResultStatus_SUCCEEDED,
  StackSetOperationResultStatus'
  #-}
