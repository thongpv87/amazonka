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
-- Module      : Network.AWS.MediaConvert.Types.H265CodecProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265CodecProfile
  ( H265CodecProfile
      ( ..,
        H265CodecProfile_MAIN10_HIGH,
        H265CodecProfile_MAIN10_MAIN,
        H265CodecProfile_MAIN_422_10BIT_HIGH,
        H265CodecProfile_MAIN_422_10BIT_MAIN,
        H265CodecProfile_MAIN_422_8BIT_HIGH,
        H265CodecProfile_MAIN_422_8BIT_MAIN,
        H265CodecProfile_MAIN_HIGH,
        H265CodecProfile_MAIN_MAIN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Represents the Profile and Tier, per the HEVC (H.265) specification.
-- Selections are grouped as [Profile] \/ [Tier], so \"Main\/High\"
-- represents Main Profile with High Tier. 4:2:2 profiles are only
-- available with the HEVC 4:2:2 License.
newtype H265CodecProfile = H265CodecProfile'
  { fromH265CodecProfile ::
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

pattern H265CodecProfile_MAIN10_HIGH :: H265CodecProfile
pattern H265CodecProfile_MAIN10_HIGH = H265CodecProfile' "MAIN10_HIGH"

pattern H265CodecProfile_MAIN10_MAIN :: H265CodecProfile
pattern H265CodecProfile_MAIN10_MAIN = H265CodecProfile' "MAIN10_MAIN"

pattern H265CodecProfile_MAIN_422_10BIT_HIGH :: H265CodecProfile
pattern H265CodecProfile_MAIN_422_10BIT_HIGH = H265CodecProfile' "MAIN_422_10BIT_HIGH"

pattern H265CodecProfile_MAIN_422_10BIT_MAIN :: H265CodecProfile
pattern H265CodecProfile_MAIN_422_10BIT_MAIN = H265CodecProfile' "MAIN_422_10BIT_MAIN"

pattern H265CodecProfile_MAIN_422_8BIT_HIGH :: H265CodecProfile
pattern H265CodecProfile_MAIN_422_8BIT_HIGH = H265CodecProfile' "MAIN_422_8BIT_HIGH"

pattern H265CodecProfile_MAIN_422_8BIT_MAIN :: H265CodecProfile
pattern H265CodecProfile_MAIN_422_8BIT_MAIN = H265CodecProfile' "MAIN_422_8BIT_MAIN"

pattern H265CodecProfile_MAIN_HIGH :: H265CodecProfile
pattern H265CodecProfile_MAIN_HIGH = H265CodecProfile' "MAIN_HIGH"

pattern H265CodecProfile_MAIN_MAIN :: H265CodecProfile
pattern H265CodecProfile_MAIN_MAIN = H265CodecProfile' "MAIN_MAIN"

{-# COMPLETE
  H265CodecProfile_MAIN10_HIGH,
  H265CodecProfile_MAIN10_MAIN,
  H265CodecProfile_MAIN_422_10BIT_HIGH,
  H265CodecProfile_MAIN_422_10BIT_MAIN,
  H265CodecProfile_MAIN_422_8BIT_HIGH,
  H265CodecProfile_MAIN_422_8BIT_MAIN,
  H265CodecProfile_MAIN_HIGH,
  H265CodecProfile_MAIN_MAIN,
  H265CodecProfile'
  #-}
