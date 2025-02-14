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
-- Module      : Network.AWS.KMS.Types.ConnectionStateType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.ConnectionStateType
  ( ConnectionStateType
      ( ..,
        ConnectionStateType_CONNECTED,
        ConnectionStateType_CONNECTING,
        ConnectionStateType_DISCONNECTED,
        ConnectionStateType_DISCONNECTING,
        ConnectionStateType_FAILED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConnectionStateType = ConnectionStateType'
  { fromConnectionStateType ::
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

pattern ConnectionStateType_CONNECTED :: ConnectionStateType
pattern ConnectionStateType_CONNECTED = ConnectionStateType' "CONNECTED"

pattern ConnectionStateType_CONNECTING :: ConnectionStateType
pattern ConnectionStateType_CONNECTING = ConnectionStateType' "CONNECTING"

pattern ConnectionStateType_DISCONNECTED :: ConnectionStateType
pattern ConnectionStateType_DISCONNECTED = ConnectionStateType' "DISCONNECTED"

pattern ConnectionStateType_DISCONNECTING :: ConnectionStateType
pattern ConnectionStateType_DISCONNECTING = ConnectionStateType' "DISCONNECTING"

pattern ConnectionStateType_FAILED :: ConnectionStateType
pattern ConnectionStateType_FAILED = ConnectionStateType' "FAILED"

{-# COMPLETE
  ConnectionStateType_CONNECTED,
  ConnectionStateType_CONNECTING,
  ConnectionStateType_DISCONNECTED,
  ConnectionStateType_DISCONNECTING,
  ConnectionStateType_FAILED,
  ConnectionStateType'
  #-}
