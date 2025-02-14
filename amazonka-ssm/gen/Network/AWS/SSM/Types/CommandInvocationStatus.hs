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
-- Module      : Network.AWS.SSM.Types.CommandInvocationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.CommandInvocationStatus
  ( CommandInvocationStatus
      ( ..,
        CommandInvocationStatus_Cancelled,
        CommandInvocationStatus_Cancelling,
        CommandInvocationStatus_Delayed,
        CommandInvocationStatus_Failed,
        CommandInvocationStatus_InProgress,
        CommandInvocationStatus_Pending,
        CommandInvocationStatus_Success,
        CommandInvocationStatus_TimedOut
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CommandInvocationStatus = CommandInvocationStatus'
  { fromCommandInvocationStatus ::
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

pattern CommandInvocationStatus_Cancelled :: CommandInvocationStatus
pattern CommandInvocationStatus_Cancelled = CommandInvocationStatus' "Cancelled"

pattern CommandInvocationStatus_Cancelling :: CommandInvocationStatus
pattern CommandInvocationStatus_Cancelling = CommandInvocationStatus' "Cancelling"

pattern CommandInvocationStatus_Delayed :: CommandInvocationStatus
pattern CommandInvocationStatus_Delayed = CommandInvocationStatus' "Delayed"

pattern CommandInvocationStatus_Failed :: CommandInvocationStatus
pattern CommandInvocationStatus_Failed = CommandInvocationStatus' "Failed"

pattern CommandInvocationStatus_InProgress :: CommandInvocationStatus
pattern CommandInvocationStatus_InProgress = CommandInvocationStatus' "InProgress"

pattern CommandInvocationStatus_Pending :: CommandInvocationStatus
pattern CommandInvocationStatus_Pending = CommandInvocationStatus' "Pending"

pattern CommandInvocationStatus_Success :: CommandInvocationStatus
pattern CommandInvocationStatus_Success = CommandInvocationStatus' "Success"

pattern CommandInvocationStatus_TimedOut :: CommandInvocationStatus
pattern CommandInvocationStatus_TimedOut = CommandInvocationStatus' "TimedOut"

{-# COMPLETE
  CommandInvocationStatus_Cancelled,
  CommandInvocationStatus_Cancelling,
  CommandInvocationStatus_Delayed,
  CommandInvocationStatus_Failed,
  CommandInvocationStatus_InProgress,
  CommandInvocationStatus_Pending,
  CommandInvocationStatus_Success,
  CommandInvocationStatus_TimedOut,
  CommandInvocationStatus'
  #-}
