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
-- Module      : Network.AWS.MediaConvert.Types.HlsOfflineEncrypted
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsOfflineEncrypted
  ( HlsOfflineEncrypted
      ( ..,
        HlsOfflineEncrypted_DISABLED,
        HlsOfflineEncrypted_ENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Enable this setting to insert the EXT-X-SESSION-KEY element into the
-- master playlist. This allows for offline Apple HLS FairPlay content
-- protection.
newtype HlsOfflineEncrypted = HlsOfflineEncrypted'
  { fromHlsOfflineEncrypted ::
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

pattern HlsOfflineEncrypted_DISABLED :: HlsOfflineEncrypted
pattern HlsOfflineEncrypted_DISABLED = HlsOfflineEncrypted' "DISABLED"

pattern HlsOfflineEncrypted_ENABLED :: HlsOfflineEncrypted
pattern HlsOfflineEncrypted_ENABLED = HlsOfflineEncrypted' "ENABLED"

{-# COMPLETE
  HlsOfflineEncrypted_DISABLED,
  HlsOfflineEncrypted_ENABLED,
  HlsOfflineEncrypted'
  #-}
