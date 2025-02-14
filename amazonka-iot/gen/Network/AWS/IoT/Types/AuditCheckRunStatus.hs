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
-- Module      : Network.AWS.IoT.Types.AuditCheckRunStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuditCheckRunStatus
  ( AuditCheckRunStatus
      ( ..,
        AuditCheckRunStatus_CANCELED,
        AuditCheckRunStatus_COMPLETED_COMPLIANT,
        AuditCheckRunStatus_COMPLETED_NON_COMPLIANT,
        AuditCheckRunStatus_FAILED,
        AuditCheckRunStatus_IN_PROGRESS,
        AuditCheckRunStatus_WAITING_FOR_DATA_COLLECTION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuditCheckRunStatus = AuditCheckRunStatus'
  { fromAuditCheckRunStatus ::
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

pattern AuditCheckRunStatus_CANCELED :: AuditCheckRunStatus
pattern AuditCheckRunStatus_CANCELED = AuditCheckRunStatus' "CANCELED"

pattern AuditCheckRunStatus_COMPLETED_COMPLIANT :: AuditCheckRunStatus
pattern AuditCheckRunStatus_COMPLETED_COMPLIANT = AuditCheckRunStatus' "COMPLETED_COMPLIANT"

pattern AuditCheckRunStatus_COMPLETED_NON_COMPLIANT :: AuditCheckRunStatus
pattern AuditCheckRunStatus_COMPLETED_NON_COMPLIANT = AuditCheckRunStatus' "COMPLETED_NON_COMPLIANT"

pattern AuditCheckRunStatus_FAILED :: AuditCheckRunStatus
pattern AuditCheckRunStatus_FAILED = AuditCheckRunStatus' "FAILED"

pattern AuditCheckRunStatus_IN_PROGRESS :: AuditCheckRunStatus
pattern AuditCheckRunStatus_IN_PROGRESS = AuditCheckRunStatus' "IN_PROGRESS"

pattern AuditCheckRunStatus_WAITING_FOR_DATA_COLLECTION :: AuditCheckRunStatus
pattern AuditCheckRunStatus_WAITING_FOR_DATA_COLLECTION = AuditCheckRunStatus' "WAITING_FOR_DATA_COLLECTION"

{-# COMPLETE
  AuditCheckRunStatus_CANCELED,
  AuditCheckRunStatus_COMPLETED_COMPLIANT,
  AuditCheckRunStatus_COMPLETED_NON_COMPLIANT,
  AuditCheckRunStatus_FAILED,
  AuditCheckRunStatus_IN_PROGRESS,
  AuditCheckRunStatus_WAITING_FOR_DATA_COLLECTION,
  AuditCheckRunStatus'
  #-}
